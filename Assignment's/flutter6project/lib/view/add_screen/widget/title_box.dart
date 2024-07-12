import 'package:flutter/material.dart';

class TitleBox extends StatefulWidget {
    TitleBox({super.key});


  @override
  State<TitleBox> createState() => _TitleBoxState();
    TextEditingController title = TextEditingController();
}

class _TitleBoxState extends State<TitleBox> {
  @override
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
            ),),
          Container(
                      height: 40,
                      width: double.maxFinite,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12.0,right: 12),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: TextField(
                            decoration: const InputDecoration(
                              hintText: 'Add Title',
                              border: InputBorder.none
                            ),
                            controller: widget.title,
                          ),
                        ),
                      ),
                    ),
        ],
      ),
    );
  }
}