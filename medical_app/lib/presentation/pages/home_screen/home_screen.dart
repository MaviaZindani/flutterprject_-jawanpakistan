import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_app/presentation/pages/login_screen/login_screen.dart';

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
          Container(
            height: 400,
            width: double.maxFinite,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(''),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Icon(Icons.sports_basketball_sharp),
                    Icon(Icons.shopping_bag_outlined)
                  ],)
                ],),
             Text('Hi, Shahzeb'),
             Text('Welcome to Quick Medical Store')
             ],
            ),
          ),
        ],
      ),
    );
  }
}