import 'package:flutter/material.dart';

class SlideBox extends StatefulWidget {
  const SlideBox({super.key});

  @override
  State<SlideBox> createState() => _SlideBoxState();
}

class _SlideBoxState extends State<SlideBox> {
  bool changeColor = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          changeColor = !changeColor;
        });
      },
      child: Container(
        height: 22,
        width: 55,
        margin: EdgeInsets.symmetric(
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: changeColor == false
              ? const Color(0xffFCD873)
              : const Color(0xffFFC727),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
