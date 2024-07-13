import 'package:flutter/material.dart';

class PriorityBox extends StatelessWidget {
  const PriorityBox({super.key});

  @override
  Widget build(BuildContext context) {
    bool selected = true;
    return Row(
      children: [
        Container(
          height: 10,
          width: 20,
          decoration: BoxDecoration(
            color: Color(0xff254069),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Text('Today Task'),
        ),
        Container(
          height: 10,
          width: 20,
          decoration: BoxDecoration(
            color: Color(0xff254069),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Text('weekly Task'),
        ),
        GestureDetector(
          onTap: (){
           
          },
          child: Container(
            height: 10,
            width: 20,
            decoration: BoxDecoration(
              color: Color(0xff254069),
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text('Monthly Task'),
          ),
        ),
      ],
    );
  }
}