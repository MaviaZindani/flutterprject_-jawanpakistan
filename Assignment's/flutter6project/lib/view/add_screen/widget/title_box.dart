import 'package:flutter/material.dart';
import 'package:flutter6project/view/add_screen/add_screen.dart';

class TitleBox extends StatelessWidget {
  TitleBox({super.key, required this.title});
  @override
  final TextEditingController title;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Title:',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          Container(
            height: 40,
            width: double.maxFinite,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextField(
                  decoration: const InputDecoration(
                      hintText: 'Add Title', border: InputBorder.none),
                  controller: title,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
