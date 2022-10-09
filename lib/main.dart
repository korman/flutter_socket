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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  List<TableRow> _tables = [];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          updateTables(3, 10);
        });
      }
    });

    super.initState();
  }

  void updateTables(int x, int y) {
    for (int yy = 0; yy < y; yy++) {
      TableRow row = const TableRow();
      for (int xx = 0; xx < x; xx++) {
        Widget w = buildItem("ffffff", Colors.white);
        row.children!.add(w);
      }

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
                    "输入框中的文字为:${tec.text}",
                  );

                  RegisterReq req = RegisterReq(name: tec.text, pass: '123456');
                  var writeBuffer = req.writeToBuffer();

                  if (!NetworkManager.getInstance()
                      .sendMsgToServer(2, writeBuffer)) {
                    print("发送失败");
                  }
                },
                vc: tec,
                cancelBtnTap: () {},
              ),
            );
          });
    });
  }

  TextEditingController tec = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Table table = Table(
      border: TableBorder.all(),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      defaultColumnWidth: const FixedColumnWidth(80),
      children: widget._tables,
    );

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: table,
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
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
