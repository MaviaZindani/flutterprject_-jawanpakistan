import 'package:flutter/material.dart';
import 'package:flutter6project/compontant.dart';
import 'package:flutter6project/models/done_notdone_model.dart';
import 'package:flutter6project/models/task_categary_model.dart';
import 'package:flutter6project/models/task_data_model.dart';



class TaskDataProvider extends ChangeNotifier {
final List<TaskDataModel> _taskDataList =[
    TaskDataModel(
      'Complete Assigment #2', 
      '13 Septembar 2022', 
      DoneNotdoneModel(
       const Color(0xff254069),
       'assets/images/homeScreen/notDoneFlage.png'
       ),
       TaskCategaryModel.weeklyTask
       ),
    TaskDataModel(
      'Submit Fee Challan', 
      '23 Septembar 2022', 
      DoneNotdoneModel(
       const Color(0xff254069),
       'assets/images/homeScreen/notDoneFlage.png'
       ),
       TaskCategaryModel.todaysTask,
       ),
    TaskDataModel(
      'Pay bill', 
      '15 Septembar 2022', 
      DoneNotdoneModel(
       const Color(0xff254069),
       'assets/images/homeScreen/notDoneFlage.png'
       ),
       TaskCategaryModel.monthlyTask,
       ),
  ];

  List<TaskDataModel> get taskDataList => _taskDataList;

  void addTask(TaskDataModel task) {
    _taskDataList.add(task);
    notifyListeners();
  }

  void removeTask(TaskDataModel task) {
    _taskDataList.remove(task);
    notifyListeners();
  }

  // void updateTask(TaskDataModel task) {
  //   final index = _taskDataList.indexWhere((t) => t.id == task.id);
  //   if (index != -1) {
  //     _taskDataList[index] = task;
  //     notifyListeners();
  //   }
  // }
}