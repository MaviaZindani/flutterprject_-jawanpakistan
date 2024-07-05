import 'package:flutter/material.dart';
import 'package:flutterproject6/utils/navigatorkey.dart';
import 'package:flutterproject6/utils/routes_names.dart';
import 'package:flutterproject6/view/home_screen/home_screen.dart';
import 'package:flutterproject6/view/splash_screen/my_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RoutesNames.splashScreen,
      navigatorKey: Navigatorkey.navigatorkey,
      routes: {
        RoutesNames.splashScreen: (context) => const MySplashScreen(),
        RoutesNames.homeScreen: (context) => const HomeScreen(),
      }
    );
  }
}


