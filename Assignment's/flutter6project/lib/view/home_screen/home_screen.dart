import 'package:flutter/material.dart';
import 'package:flutterproject6/view/home_screen/widget/home_random_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Welcome to Notes',style: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold),),
                  HomeRandomText(size: 27, data: 'Have a grate Day', shade: Colors.black),
                  ],
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assats/images/homescreen/profilepic.jpg'),
              )
            ],
          ),
          HomeRandomText(size: 35, data: 'My Priority Task', shade: Colors.black)
        ],
      ),
    );
  }
}