import 'package:flutter/material.dart';

class HomeRandomText extends StatelessWidget {
  final double size;
  final String data;
  Color shade;
  HomeRandomText(
      {super.key,
      required this.size,
      required this.data,
      this.shade = Colors.black});

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(color: shade, fontSize: size),
    );
  }
}
