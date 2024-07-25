import 'package:flutter/material.dart';
import 'package:flutter6project/controller/task_fuction.dart';
import 'package:flutter6project/models/task_categary_model.dart';
import 'package:provider/provider.dart';

class TaskCategoryList extends StatelessWidget {
  const TaskCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: SizedBox(
        width: double.maxFinite,
        height: 30,
        child: Consumer<TaskFuction>(
          builder: (context, value, child) {
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: value.list.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      value.list[index].taskcategarymodel.title.toString(),
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
