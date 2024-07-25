import 'package:flutter/material.dart';
import 'package:flutter6project/controller/task_fuction.dart';
import 'package:provider/provider.dart';

class TaskList extends StatefulWidget {
  const TaskList({super.key});

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    bool taskDone = true;
    return Consumer<TaskFuction>(
      builder: (context, value, child) {
        return SizedBox(
          child: ListView.builder(
              shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              itemCount: value.list.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(value.list[index].title),
                                Row(
                                  children: [
                                    const Icon(Icons.calendar_month_outlined),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(value.list[index].date),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    taskDone == false
                                        ? SizedBox(
                                            height: 12,
                                            width: 12,
                                            child: Image.asset(
                                              value.list[index].doneornot.done,
                                            ))
                                        : Image.asset(
                                            'assets/images/homeScreen/notDoneFlage.png')
                                  ],
                                ),
                              ],
                            ),
                            const Icon(Icons.menu),
                          ]),
                    ),
                  ),
                );
              }),
        );
      },
    );
  }
}
