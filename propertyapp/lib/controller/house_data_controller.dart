import 'package:flutter/material.dart';
import 'package:propertyapp/dataprovider/house_data_perovider.dart';
import 'package:propertyapp/modles/house_card_model.dart';

class HouseDataController with ChangeNotifier {
  List<HouseCard> houseData = HouseDataPerovider().housedatalist;

  void addhouse(int index,HouseCard card){
     houseData.add(card);
     notifyListeners();
  }
}