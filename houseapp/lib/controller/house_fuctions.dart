import 'package:flutter/material.dart';
import 'package:houseapp/dataprovider/house_data_provider.dart';
import 'package:houseapp/modles/house_card_model.dart';

class HouseFuctions with ChangeNotifier {
  List<HouseCard> list = HouseDataProvider().houseData;
  
  void addTask(HouseCard card) {
    list.add(card);
    notifyListeners();
  }
}