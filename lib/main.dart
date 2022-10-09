import 'package:flutter/material.dart';
import 'rename_dialog.dart';
import 'network.dart';
import 'package:flutter_socket/pb/conn.pb.dart';
import 'package:flutter_socket/pb/cs_logic.pb.dart';

void main() async {
  NetworkManager.getInstance().start("127.0.0.1", 9898);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  List<TableRow> _tables = [];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Table _table = Table();

  @override
  void initState() {
    NetworkManager.getInstance().registerMsgHandler(1, (byteData) {
      var sayReq = SayReq.fromBuffer(byteData);
      print(sayReq.text);

      SayReq req = SayReq(text: 'Yes!Im Alive.');
      var writeBuffer = req.writeToBuffer();

      if (!NetworkManager.getInstance().sendMsgToServer(1, writeBuffer)) {
        print("发送失败");
      }
    });

    NetworkManager.getInstance().registerMsgHandler(2, (byteData) {
      RegisterReply reply = RegisterReply.fromBuffer(byteData);
      if (reply.result == RegisterResult.REG_SUCCEEDED) {
        setState(() {
          updateTables();
        });
      }
    });

    super.initState();
  }

  void updateTables() {
    _table = Table(
      border: TableBorder.all(),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      defaultColumnWidth: const FixedColumnWidth(80),
      children: widget._tables,
    );

    for (int yy = 0; yy < 10; yy++) {
      List<Widget> children = [];
      for (int xx = 0; xx < 3; xx++) {
        Widget w = buildItem("ffffff", Colors.white);
        children.add(w);
      }

      TableRow row = TableRow(children: children);

      widget._tables.add(row);
    }
  }

  void _incrementCounter() {
    setState(() {
      showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return RenameDialog(
              contentWidget: RenameDialogContent(
                title: "请输入新的家庭名称",
                okBtnTap: () {
                  print(
                    "输入框中的文字为:${_textController.text}",
                  );

                  RegisterReq req =
                      RegisterReq(name: _textController.text, pass: '123456');
                  var writeBuffer = req.writeToBuffer();

                  if (!NetworkManager.getInstance()
                      .sendMsgToServer(2, writeBuffer)) {
                    print("发送失败");
                  }
                },
                vc: _textController,
                cancelBtnTap: () {},
              ),
            );
          });
    });
  }

  TextEditingController _textController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _table,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.person_add),
      ),
    );
  }

  Widget buildItem(String content, Color backgroundColor) {
    return Container(
      width: 100,
      height: 100,
      alignment: Alignment.center,
      color: backgroundColor,
      child: Text(content),
    );
  }
}

class RenameDialog extends AlertDialog {
  RenameDialog({super.key, required Widget contentWidget})
      : super(
          content: contentWidget,
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Colors.blue, width: 3)),
        );
}
