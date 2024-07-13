import 'package:flutter/material.dart';

class DiscriptionBox extends StatefulWidget {
  DiscriptionBox({super.key});

  @override
  State<DiscriptionBox> createState() => _DiscriptionBoxState();
  TextEditingController discription = TextEditingController();
}

class _DiscriptionBoxState extends State<DiscriptionBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Discription:',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          Container(
            height: 120,
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
                      border: InputBorder.none, hintText: 'Add Discription...'),
                  controller: widget.discription,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
