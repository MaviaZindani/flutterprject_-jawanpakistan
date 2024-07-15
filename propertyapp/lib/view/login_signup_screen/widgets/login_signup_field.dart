import 'package:flutter/material.dart';
import 'package:propertyapp/compontent.dart';

class LoginSignupField extends StatelessWidget {
  const LoginSignupField({super.key,required this.textController, required this.textHint, required this.icon, required this.inputTextType});
  final TextEditingController textController;
  final String textHint;
  final Icon icon;
  final TextInputType inputTextType;
  

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textController,
      keyboardType: inputTextType,
      decoration: InputDecoration(
        icon: icon,
        hintText: textHint,
        fillColor: homeGrayWhite,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          ),
      ),
    );
  }
}