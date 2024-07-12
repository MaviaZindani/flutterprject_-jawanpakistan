import 'package:flutter/material.dart';
import 'package:flutter6project/dataProvider/task_data_provider.dart';
import 'package:flutter6project/models/task_categary_model.dart';

class TaskCategoryList extends StatelessWidget {
  const TaskCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: SizedBox(
        width: double.maxFinite,
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: TaskDataProvider().taskDataList.length,
          itemBuilder: (context,index){
            return 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                TaskDataProvider().taskDataList[index].taskcategarymodel.title.toString(),
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),),
            );
          }),
      ),
    );
  }
}