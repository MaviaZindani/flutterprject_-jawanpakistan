import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medical_app/presentation/pages/home_screen/home_screen.dart';
import 'package:medical_app/presentation/pages/walktough/walkthough.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay navigation to HomeScreen for 1500 milliseconds (1.5 seconds)
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const WalkThough()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff2D9CDB),
              Color(0xff2F80ED),
            ],
            stops: [0.0, 1.0],
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            tileMode: TileMode.repeated,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 170,
              width: double.infinity,
              child: FittedBox(
                fit: BoxFit.cover,
                child: Padding(
                  padding: const EdgeInsets.only(top: 280.0),
                  child: Image.asset(
                    'assets/images/splash_screen_images/group3.png',
                    opacity: const AlwaysStoppedAnimation(0.9),
                  ),
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.fill,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Image.asset('assets/images/splash_screen_images/group2.png'),
                  Image.asset('assets/images/splash_screen_images/group1.png'),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 30,
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
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w100,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
