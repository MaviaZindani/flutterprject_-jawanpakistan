import 'package:flutter/material.dart';
import 'package:flutter6project/controller/task_fuction.dart';
import 'package:provider/provider.dart';
import 'package:flutter6project/dataProvider/task_data_provider.dart';
import 'package:flutter6project/view/add_screen/add_screen.dart';
import 'package:flutter6project/view/home_screen/home_screen.dart';
import 'package:flutter6project/view/splash_screen/my_splash_screen.dart';

import 'utils/routes_names.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskFuction()),
        ChangeNotifierProvider(create: (_) => TaskDataProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      routes: {
        RoutesNames.splashScreen: (context) => const MySplashScreen(),
        RoutesNames.homeScreen: (context) => const HomeScreen(),
        RoutesNames.addScreen: (context) => AddScreen(),
      },
    );
  }
}
