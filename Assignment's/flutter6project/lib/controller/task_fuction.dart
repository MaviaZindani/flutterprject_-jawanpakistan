import 'package:flutter/material.dart';
import 'package:flutter6project/dataProvider/task_data_provider.dart';
import 'package:flutter6project/models/task_data_model.dart';
// import 'package:flutter6project/dataProvider/task_data_provider.dart';

class TaskFuction with ChangeNotifier {
  List<TaskDataModel> list = TaskDataProvider().taskDataList;

  void addTask(TaskDataModel task) {
    list.add(task);
    notifyListeners();
  }

  void removeTask(TaskDataModel task) {
    list.remove(task);
    notifyListeners();
  }
}
