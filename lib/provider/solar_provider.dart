import 'package:flutter/material.dart';

import '../json/json.dart';
import '../modal/data_modal.dart';

class SolorProvider with ChangeNotifier {
  bool isUp = false;
  int seletcedIndex = 0;
  List<SolarModel> solarSystemData = [];

  void getList() {
    solarSystemData = solarSystem.map((e) => SolarModel.fromMap(e)).toList();
    notifyListeners();
  }

  void changeGif() {
    isUp = !isUp;
    notifyListeners();
  }

  void changeIndex(int index) {
    seletcedIndex = index;
    notifyListeners();
  }
}
