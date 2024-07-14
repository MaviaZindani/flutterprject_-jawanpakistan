import 'package:flutter/material.dart';
import 'package:houseapp/utils/routes.dart';
import 'package:houseapp/view/home_screen/home_screen.dart';
import 'package:houseapp/view/login_signup_screen/login_signup_screen.dart';
import 'package:provider/provider.dart';

void main() {
  MultiProvider(
   providers: [],
   child:  const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
         Routes.loginSignupScreen: (context) => LoginSignupScreen(),
         Routes.homeScreen: (context) => const HomeScreen(),
      },
      initialRoute: Routes.loginSignupScreen,
    );
  }
}