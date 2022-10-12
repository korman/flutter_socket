import 'package:flutter_socket/pb/sc_logic.pb.dart';
import 'package:flutter_socket/table_item.dart';
import 'package:flutter_socket/rename_dialog.dart';
import 'package:flutter_socket/input_dialog.dart';
import 'rename_dialog.dart';
import 'package:flutter_socket/pb/global_define.pb.dart';
import 'package:flutter_socket/pb/conn.pb.dart';
import 'package:flutter_socket/pb/cs_logic.pb.dart';
import 'package:flutter/material.dart';
import 'network.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key, required this.title}) : super(key: key);

  final String title;
  List<TableRow> _tables = [];
  MapInfo _mapInfo = MapInfo(width: 0, height: 0);
  List<Node> _nodes = [];

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  Table _table = Table();
  TextEditingController _textController = TextEditingController(text: '');

  @override
  void reassemble() {
    print("reassemble");

    super.reassemble();
  }

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
        print("注册成功");
      }
    });

    NetworkManager.getInstance().registerMsgHandler(3, (byteData) {
      LockNodeReply reply = LockNodeReply.fromBuffer(byteData);
      if (reply.result == LockResult.LOCK_SUCCEEDED) {
        print("锁定成功");
      }
    });

    NetworkManager.getInstance().registerMsgHandler(4, (byteData) {
      InputTextReply reply = InputTextReply.fromBuffer(byteData);
      if (reply.result != LockResult.LOCK_SUCCEEDED) {
        print("输入失败");
      }

      print('输入成功');
    });

    NetworkManager.getInstance().registerMsgHandler(11, (byteData) {
      InitMapInfo initInfo = InitMapInfo.fromBuffer(byteData);
      widget._mapInfo = initInfo.info;

      for (int i = 0; i < widget._mapInfo.width * widget._mapInfo.height; i++) {
        int y = i % widget._mapInfo.width;
        int x = i - y * widget._mapInfo.width;
        Node node = Node(x: x, y: y, text: '', state: LockStatus.COMMON_NODE);

        widget._nodes.add(node);
      }
      setState(() {
        updateTables();
      });
    });

    NetworkManager.getInstance().registerMsgHandler(12, (byteData) {
      UpdateNodes updateNodes = UpdateNodes.fromBuffer(byteData);

      widget._nodes = updateNodes.nodes;

      setState(() {
        updateTables();
      });
    });

    super.initState();
  }

  void updateTables() {
    _table = Table(
      border: TableBorder.all(),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      defaultColumnWidth: const FixedColumnWidth(125),
      children: widget._tables,
    );

    widget._tables.clear();

    if (widget._mapInfo.width == 0 || widget._mapInfo.height == 0) {
      return;
    }
    for (int yy = 0; yy < widget._mapInfo.height; yy++) {
      List<Widget> children = [];
      for (int xx = 0; xx < widget._mapInfo.width; xx++) {
        var text = widget._nodes[yy * widget._mapInfo.width + xx].text;
        var color = Colors.white;

        if (widget._nodes[yy * widget._mapInfo.width + xx].state ==
            LockStatus.LOCKED_NODE) {
          color = Colors.red;
        }

        Widget w = buildItem(text, color, xx, yy);
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
              contentWidget: InputDialog(
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

  Widget buildItem(String content, Color backgroundColor, int x, int y) {
    return TableItem(color: backgroundColor, text: content, x: x, y: y);
  }
}
