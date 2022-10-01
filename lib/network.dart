import 'package:flutter_socket/pb/conn.pb.dart';
import 'dart:io';
import 'dart:typed_data';

class NetworkManager {
  // 单例模式固定格式
  NetworkManager._();
  Socket? socket;
  Stream<List<int>>? streams;

  // 单例模式固定格式
  static NetworkManager? _instance;

  // 单例模式固定格式
  static NetworkManager getInstance() {
    if (_instance == null) {
      _instance = NetworkManager._();
    }
    return _instance!;
  }

  var dataStack = [];

  void start(String ip, int port) async {
    await Socket.connect('10.30.20.211', 9898).then((Socket sock) {
      socket = sock;
      streams = sock.asBroadcastStream();

      if (streams != null) {
        streams!.listen((List<int> event) {});
      }

      SayReq req = SayReq(text: '压脉带');
      var writeBuffer = req.writeToBuffer();

      ByteData bydata = ByteData(16);
      bydata.setUint64(0, writeBuffer.length);
      bydata.setUint64(8, 1);

      var msg = bydata.buffer.asUint8List() + writeBuffer;
      if (socket != null) {
        socket!.add(msg);
      }
    });
  }

  // 添加数据
  void add(dynamic data) {
    if (!dataStack.contains(data)) {
      dataStack.add(data);
    }
  }

  // 移除数据
  void remove(dynamic data) {
    dataStack.remove(data);
  }
}
