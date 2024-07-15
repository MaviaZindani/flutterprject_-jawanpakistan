import 'package:flutter/material.dart';

class HouseCatugryList extends StatelessWidget {
  const HouseCatugryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (context,index){
          return Container(
            height: 10,
            width: 20,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
              child: Text(''),
            ),
          );
        }
        ),
    );
  }
}