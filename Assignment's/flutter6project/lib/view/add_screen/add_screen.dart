import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter6project/dataProvider/task_data_provider.dart';
import 'package:flutter6project/models/done_notdone_model.dart';
import 'package:flutter6project/models/task_categary_model.dart';
import 'package:flutter6project/models/task_data_model.dart';
import 'package:flutter6project/view/add_screen/widget/discription_box.dart';
import 'package:flutter6project/view/add_screen/widget/title_box.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
   TimeOfDay fromTime = TimeOfDay.now();
  Future<void> _fromTime(BuildContext context) async {
final TimeOfDay? pickedTime = await showTimePicker(
    context: context,
    initialTime: fromTime, builder: (BuildContext context, Widget? child) {
       return MediaQuery(
         data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
        child: child ?? const SizedBox.shrink(),
      );});
      

      String fromdata = fromTime.format(context);


  if (pickedTime != null && pickedTime != fromTime )
  setState(() {
   fromTime = pickedTime;
  });
}

TimeOfDay toTime = TimeOfDay.now();
  Future<void> _toTime(BuildContext context) async {
final TimeOfDay? pickedTime = await showTimePicker(
    context: context,
    initialTime: fromTime, builder: (BuildContext context, Widget? child) {
       return MediaQuery(
         data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
        child: child ?? const SizedBox.shrink(),
      );});
      

      String todata = toTime.format(context);


  if (pickedTime != null && pickedTime != toTime )
  setState(() {
    toTime = pickedTime;
  });
}

  @override
  Widget build(BuildContext context) {
    List<TaskDataModel> taskdata = TaskDataProvider().taskDataList;
    return Scaffold(
      backgroundColor: Color(0xff6b79c0),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children:[ Column(
            children: [
             const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Create new Task',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('assets/images/homeScreen/profilemage.png'),
                    )
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'From',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                GestureDetector(
                  onTap: () => _fromTime(context),
                  child: Container(
                    height: 30,
                    width: 90,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Text(
                      fromTime.format(context),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'To',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                GestureDetector(
                  onTap: () => _toTime(context),
                  child: Container(
                    height: 30,
                    width: 90,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Text(
                      toTime.format(context),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ],
                ),
              ),
              TitleBox(),
              DiscriptionBox(),
            ],
          ),
          ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Color(0xff254069))
            ),
            onPressed: (){
              TaskDataProvider().addTask(
                TaskDataModel(
                  TitleBox().title.text,
                  fromTime.format(context), 
                  DoneNotdoneModel(
                    Colors.green, 
                    ''), 
                    TaskCategaryModel.todaysTask)
              );
              print(TaskDataProvider().taskDataList.length);
              Navigator.pop(context);
            }, 
            child: const SizedBox(
              height: 40,
              width: double.maxFinite,
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Add Task',
                style: TextStyle(color: Colors.white),)
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}