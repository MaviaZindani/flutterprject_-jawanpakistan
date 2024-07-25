import 'package:flutter/material.dart';
import 'package:flutter6project/models/done_notdone_model.dart';
import 'package:flutter6project/models/task_categary_model.dart';
import 'package:flutter6project/models/task_data_model.dart';

class TaskDataProvider with ChangeNotifier {
  final List<TaskDataModel> _taskDataList = [
    TaskDataModel(
        'Complete Assigment #2',
        '13 Septembar 2022',
        DoneNotdoneModel(
            const Color(0xff254069), 'assets/images/homeScreen/doneFlage.png'),
        TaskCategaryModel.weeklyTask),
    TaskDataModel(
      'Submit Fee Challan',
      '23 Septembar 2022',
      DoneNotdoneModel(
          const Color(0xff254069), 'assets/images/homeScreen/doneFlage.png'),
      TaskCategaryModel.todaysTask,
    ),
    TaskDataModel(
      'Pay bill',
      '15 Septembar 2022',
      DoneNotdoneModel(
          const Color(0xff254069), 'assets/images/homeScreen/doneFlage.png'),
      TaskCategaryModel.monthlyTask,
    ),
  ];

  List<TaskDataModel> get taskDataList => _taskDataList;
}
