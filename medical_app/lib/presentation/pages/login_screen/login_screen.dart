import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Column(
                children: [
                  Container(
                    height: 74,
                    width: 74,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow:[BoxShadow(blurStyle: BlurStyle.normal,blurRadius: 3.0,spreadRadius: 0.2)],
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Image.asset(
                          'assets/images/splash_screen_images/vector_splash_screen.png'),
                    ),
                  ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Quick Order',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w100,
                  fontStyle: FontStyle.italic,
                ),
              ),
                ],
              ),
            ),
            const SizedBox(height: 30,),
            Column(
              children: [
                const Text('Please Enter your Mobile Number\n to Login/Sign Up',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff090F47)),),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(decoration: InputDecoration(
                hintText: '+92 123 4567 8910',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(26))
              ),),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: SizedBox(
                height: 38,
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff4157FF),
                  ),
                  onPressed: (){}, 
                  child: Text('CONTINUE',style: TextStyle(color: Colors.white),)),
              ),
            )
              ],
            ),
          ],
        ),
      ),
    );
  }
}