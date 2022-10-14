import 'package:flutter/foundation.dart';
import 'package:flutter_socket/pb/global_define.pb.dart';

class MapModel extends ChangeNotifier {
  MapInfo _mapInfo = MapInfo();

  set mapSize(MapInfo info) {
    _mapInfo = info;

    notifyListeners();
  }

  get getMapSize {
    return _mapInfo;
  }
}
