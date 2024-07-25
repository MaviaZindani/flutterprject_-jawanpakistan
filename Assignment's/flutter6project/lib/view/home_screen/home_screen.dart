import 'package:flutter/material.dart';
import 'package:flutter6project/dataProvider/box_data_provider.dart';
import 'package:flutter6project/models/box_model.dart';
import 'package:flutter6project/view/home_screen/widget/priority_task_box.dart';
import 'package:flutter6project/view/home_screen/widget/task_list.dart';
import 'widget/home_random_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<BoxMoldes> datalist = [
    BoxDataProvider.boxlist[0],
    BoxDataProvider.boxlist[1]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff6b79c0),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: HomeRandomText(size: 30, data: 'Welcom to Notes'),
                  subtitle: HomeRandomText(size: 22, data: 'Have a grate Day'),
                  trailing: const CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        AssetImage('assets/images/homeScreen/profilemage.png'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                HomeRandomText(size: 22, data: 'My Priority Task'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    PriorityTaskBox(
                        boxpic: datalist[0].boxpix,
                        hours: datalist[0].hours,
                        title1: datalist[0].title1,
                        title2: datalist[0].title2,
                        subtitle1: datalist[0].subtitle1,
                        subtitle2: datalist[0].subtitle2),
                    PriorityTaskBox(
                        boxpic: datalist[1].boxpix,
                        hours: datalist[1].hours,
                        title1: datalist[1].title1,
                        title2: datalist[1].title2,
                        subtitle1: datalist[1].subtitle1,
                        subtitle2: datalist[1].subtitle2),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Tasks',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/addScreen');
                      },
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/homeScreen/Addimage.png'),
                        radius: 22,
                      ),
                    ),
                  ],
                ),

                //  TaskCategoryList(),
                Expanded(child: const TaskList()),
              ],
            )),
      ),
    );
  }
}
