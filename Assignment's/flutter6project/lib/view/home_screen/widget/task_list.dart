import 'package:flutter/material.dart';
import 'package:flutter6project/dataProvider/task_data_provider.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {
   TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
  final taskDataList = Provider.of<TaskDataProvider>(context).taskDataList;
   bool done = true; 
    return SizedBox(
      height: double.maxFinite,
      width: double.maxFinite,
      child: ListView.builder(
        // itemCount: TaskDataProvider.taskDataList.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Card(
              color: Colors.white,
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(TaskDataProvider().taskDataList[index].title),
                    Container(
                      height: 10,
                      width: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                       color: done == false?
                        TaskDataProvider().taskDataList[index].doneornot.color:
                        TaskDataProvider().taskDataList[index].doneornot.color,
                      
                      ),
                      child: Text(TaskDataProvider().taskDataList[index].doneornot.done),
              
                    ),
                  ],),
                  subtitle:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                     const Icon(Icons.calendar_month_outlined),
                      Text(TaskDataProvider().taskDataList[index].date),
                      // done == false?
                      // Image.asset(TaskDataProvider.taskDataList[index].doneornot.done):
                      // Image.asset('assets/images/homeScreen/doneFlaeg.jpg')
                    ],
                  ),
                trailing: const Icon(Icons.menu),
              ),
            ),
          );
        }),
    );
  }
}