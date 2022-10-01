import 'package:flutter/material.dart';
import 'rename_dialog.dart';
import 'network.dart';

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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
      children: [
        TableRow(children: [
          buildItem("1", Colors.redAccent),
          buildItem("2", Colors.orangeAccent),
          buildItem("3", Colors.yellowAccent),
          buildItem("4", Colors.greenAccent)
        ]),
        TableRow(children: [
          buildItem("5", Colors.greenAccent),
          buildItem("6", Colors.yellowAccent),
          buildItem("7", Colors.orangeAccent),
          buildItem("8", Colors.redAccent)
        ])
      ],
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

  buildItem(String content, Color backgroundColor) {
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
  RenameDialog({required Widget contentWidget})
      : super(
          content: contentWidget,
          contentPadding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: Colors.blue, width: 3)),
        );
}
