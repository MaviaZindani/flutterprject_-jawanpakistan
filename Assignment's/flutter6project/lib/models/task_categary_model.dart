enum TaskCategaryModel{todaysTask, weeklyTask, monthlyTask}

extension TaskCategaryModelExtension on TaskCategaryModel{
  String get title  {
  switch (this) {
    case TaskCategaryModel.monthlyTask:
      return 'Monthly Task';
    case TaskCategaryModel.todaysTask:
      return 'Todays Task';
    case TaskCategaryModel.weeklyTask:
      return 'Weekly Task';
  }
 }
}