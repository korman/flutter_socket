import 'package:flutter_socket/pb/conn.pb.dart';
import 'dart:io';
import 'dart:typed_data';

class NetworkManager {
  // 单例模式固定格式
  NetworkManager._();
  Socket? socket;
  Stream<List<int>>? streams;
  final int msgCodeByteLen = 8;
  int msgByteLen = 8;
  int minMsgByteLen = 16;
  Uint8List _cacheData = Uint8List(0);

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
    Socket.connect('127.0.0.1', 9898).then((Socket sock) {
      socket = sock;
      streams = sock.asBroadcastStream();

      if (streams != null) {
        streams!.listen(onData, onError: onError, onDone: onDone);
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

      // socket!.listen(onData,
      //     onError: onError, onDone: onDone, cancelOnError: false);
    });
  }

  void onError(Object obj, StackTrace st) {
    print('出错了');
  }

  void onDone() {
    print('On Done');
  }

  void onData(List<int> newData) {
    _cacheData = Uint8List.fromList(_cacheData + newData);

    print('来消息了');

    while (_cacheData.length >= minMsgByteLen) {
      var byteData = _cacheData.buffer.asByteData();
      var msgLen = byteData.getInt64(0);

      if (_cacheData.length < msgLen + 8) {
        return;
      }

      var msgId = byteData.getInt64(8);

      print(msgId);
      print(msgLen);

      int totalLen = minMsgByteLen + msgLen;

      var pbList;
      if (msgLen > 0) {
        pbList = _cacheData.sublist(minMsgByteLen, totalLen);
      }

      _cacheData = _cacheData.sublist(totalLen, _cacheData.length);

      var sayReq = SayReq.fromBuffer(pbList);
      print(sayReq.text);
    }
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
