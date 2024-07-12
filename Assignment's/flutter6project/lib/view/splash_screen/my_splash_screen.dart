
import 'package:flutter/material.dart';

import 'widget/slide_box.dart';
import 'widget/splash_random_text.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff6b79c0),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 40),
          child: Column(
            children: [
              const RandomText(
                size: 35,
                data: 'Manage your',
                shade: Colors.black,
              ),
              const RandomText(
                size: 35,
                data: 'Daily To Do',
                shade: Colors.black,
              ),

              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
              //   child: Image.asset(
              //     'assets/images/splashScreenImages/Illustration.png',
              //   ),
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  SlideBox(),
                  SlideBox(),
                  SlideBox(),
                ],
              ),
              const RandomText(
                size: 24,
                data: 'Without much worry just manage',
                shade: Colors.black,
              ),
              const RandomText(
                size: 24,
                data: 'Dthings as easy as piece of cake',
                shade: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffFFC00E),
                  elevation: 2,
                ),
                onPressed: () {
                  
                  Navigator.pushNamed(context, '/homescreen');
                },
                child: const Text(
                  'Getting Start',
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
