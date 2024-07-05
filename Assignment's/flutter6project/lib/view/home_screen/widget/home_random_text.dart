import 'package:flutter/material.dart';

class HomeRandomText extends StatelessWidget {
  final double size;
  final String data;
  final Color shade;
  const HomeRandomText({super.key, required this.size, required this.data, required this.shade});

  @override
  Widget build(BuildContext context) {
    return Text(
             data,
              style: TextStyle(
                color: shade,
                fontSize: size),
            );
  }
}