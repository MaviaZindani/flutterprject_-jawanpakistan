import 'package:flutter/material.dart';
import 'package:flutter6project/view/home_screen/widget/home_random_text.dart';

class PriorityTaskBox extends StatefulWidget {
  const PriorityTaskBox(
      {super.key,
      required this.boxpic,
      required this.hours,
      required this.title1,
      required this.title2,
      required this.subtitle1,
      required this.subtitle2});
  final String boxpic;
  final String hours;
  final String title1;
  final String title2;
  final String subtitle1;
  final String subtitle2;

  @override
  State<PriorityTaskBox> createState() => _PriorityTaskBoxState();
}

class _PriorityTaskBoxState extends State<PriorityTaskBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: 140,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xffA6A6A6),
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Image.asset(widget.boxpic),
            ),
            HomeRandomText(
              size: 13,
              data: widget.hours,
              shade: Colors.white,
            ),
            HomeRandomText(
              size: 19,
              data: widget.title1,
              shade: Colors.white,
            ),
            HomeRandomText(
              size: 19,
              data: widget.title2,
              shade: Colors.white,
            ),
            HomeRandomText(
              size: 13,
              data: widget.subtitle1,
              shade: Colors.white,
            ),
            HomeRandomText(
              size: 13,
              data: widget.subtitle2,
              shade: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
