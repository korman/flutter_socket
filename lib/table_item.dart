import 'package:flutter/material.dart';
import 'package:flutter_socket/pb/cs_logic.pb.dart';
import 'package:flutter_socket/pb/global_define.pb.dart';
import 'network.dart';

class TableItem extends StatefulWidget {
  const TableItem(
      {super.key,
      required this.x,
      required this.y,
      required this.color,
      required this.text});

  final int x;
  final int y;
  final Color color;
  final String text;

  @override
  State<TableItem> createState() => TableItemState();
}

class TableItemState extends State<TableItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Node node = Node(x: widget.x, y: widget.y);
        LockNodeReq req = LockNodeReq();
        req.lockNode = node;
        var writeBuffer = req.writeToBuffer();

        if (!NetworkManager.getInstance().sendMsgToServer(3, writeBuffer)) {
          print("发送失败");
        }
      },
      child: Container(
        width: 100,
        height: 100,
        alignment: Alignment.center,
        color: widget.color,
        child: Text(widget.text),
      ),
    );
  }
}
