import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';
import 'package:houseapp/view/login_signup_screen/widgets/login_signup_field.dart';

class LoginSignupScreen extends StatelessWidget {
  LoginSignupScreen({super.key});
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Text(
            'Login to Your Account',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: homeTextColor,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          LoginSignupField(
              textController: emailController,
              textHint: 'Email@gmail.com',
              icon: const Icon(Icons.alternate_email),
              inputTextType: TextInputType.emailAddress),
          const SizedBox(
            height: 15,
          ),
          LoginSignupField(
              textController: emailController,
              textHint: 'Email@gmail.com',
              icon: const Icon(Icons.alternate_email),
              inputTextType: TextInputType.emailAddress),
          const  SizedBox(
            height: 15,
          ),
          Checkbox(value: true, onChanged: (selected){}),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
            onPressed: (){}, 
            child: const Text('Sign in'),
            ),
          const SizedBox(
            height: 15,
          ),
          Text('Forgot the password?',
          style: TextStyle(
            color: homeBlue,
            fontSize: 8
           ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text('or continue with',
          style: TextStyle(
            color: homeTextColor,
            fontSize: 8
          ),
        ),
        const SizedBox(
            height: 25,
          ),
          const Row(
            children: [
              Icon(
                Icons.facebook,
                ),
              Icon(
                Icons.apple,
                ),
              Icon(
                Icons.groups_sharp,
                ),
             ],
          ),
        const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Text('Dont have an account?',
              style: TextStyle(
                color: homeTextColor,
                fontSize: 8
              ),
              ),
              Text('Sign up',
              style: TextStyle(
                color: homeBlue,
                fontSize: 8
              ),
                      ),
            ],
          ),
        ],
      ),
    );
  }
}
