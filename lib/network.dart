import 'dart:io';
import 'dart:typed_data';

class NetworkManager {
  NetworkManager._();
  Socket? _socket;
  Stream<List<int>>? _streams;
  final int _minMsgByteLen = 16;
  Uint8List _cacheData = Uint8List(0);
  Map<int, Function> _msgCallback = Map();

  static NetworkManager? _instance;

  static NetworkManager getInstance() {
    if (_instance == null) {
      _instance = NetworkManager._();
    }
    return _instance!;
  }

  void start(String ip, int port) async {
    Socket.connect('10.30.20.211', 9898).then((Socket sock) {
      _socket = sock;
      _streams = sock.asBroadcastStream();

      if (_streams != null) {
        _streams!.listen(onData, onError: onError, onDone: onDone);
      }
    });
  }

  bool registerMsgHandler(int msgId, Function f) {
    _msgCallback[msgId] = f;
    return true;
  }

  void onError(Object obj, StackTrace st) {
    print('出错了');
  }

  void onDone() {
    print('On Done');
  }

  void onData(List<int> newData) {
    _cacheData = Uint8List.fromList(_cacheData + newData);

    while (_cacheData.length >= _minMsgByteLen) {
      var byteData = _cacheData.buffer.asByteData();
      var msgLen = byteData.getInt64(0);

      if (_cacheData.length < msgLen + 8) {
        return;
      }

      var msgId = byteData.getInt64(8);

      var msgHandler = _msgCallback[msgId];

      if (msgHandler == null) {
        return;
      }

      int totalLen = _minMsgByteLen + msgLen;

      var pbList = Uint8List(0);

      if (msgLen > 0) {
        pbList = _cacheData.sublist(_minMsgByteLen, totalLen);
      }

      _cacheData = _cacheData.sublist(totalLen, _cacheData.length);

      msgHandler(pbList);
    }
  }

  bool sendMsgToServer(int msgId, Uint8List msgData) {
    ByteData bydata = ByteData(16);
    bydata.setUint64(0, msgData.length);
    bydata.setUint64(8, msgId);

    var msg = bydata.buffer.asUint8List() + msgData;
    if (_socket != null) {
      _socket!.add(msg);
    }

    return true;
  }
}
