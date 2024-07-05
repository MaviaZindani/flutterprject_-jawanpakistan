import 'package:flutter/material.dart';
import 'package:flutterproject6/view/splash_screen/widget/splash_random_text.dart';
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
        backgroundColor: Color(0xff6b79c0),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 30),
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const RandomText(size: 40, data: 'Manage your', shade: Colors.black),
                  const RandomText(size: 40, data: 'Daily To Do', shade: Colors.black),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset('assats/images/splashscreen/splash screen image.png',height: 497.66,width: 379,),
                  const SizedBox(
                    height: 20,
                  ),
                  const RandomText(size: 24, data: 'Without much worry just manage', shade: Colors.black),
                  const RandomText(size: 24, data: 'Dthings as easy as piece of cake', shade: Colors.black),
                  const SizedBox(
                    height: 80,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffFFC00E),
                      elevation: 2,
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/homescreen');
                    }, 
                    child: const Text('Getting Start',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22),
                      ),
                      ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
