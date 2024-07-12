import 'package:flutter6project/models/done_notdone_model.dart';
import 'package:flutter6project/models/task_categary_model.dart';

class TaskDataModel {
  final String _title;
  final String _date;
  final DoneNotdoneModel _doneornot;
  final TaskCategaryModel _categaryModel;

  TaskDataModel(this._title, this._date, this._doneornot, this._categaryModel);

  String get title => _title;
  String get date => _date;
  DoneNotdoneModel get doneornot => _doneornot;
  TaskCategaryModel get taskcategarymodel => _categaryModel;
}