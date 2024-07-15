import 'package:flutter/material.dart';
import 'package:propertyapp/controller/house_data_controller.dart';
import 'package:propertyapp/dataprovider/house_data_perovider.dart';
import 'package:propertyapp/utils/routes.dart';
import 'package:propertyapp/view/home_screen/home_screen.dart';
import 'package:propertyapp/view/login_signup_screen/login_signup_screen.dart';
import 'package:provider/provider.dart';
// import 'package:firebase_core/firebase_core.dart';


void main() {
  MultiProvider(
    providers: [
        ChangeNotifierProvider(create: (_) => HouseDataController()),
        ChangeNotifierProvider(create: (_) => HouseDataPerovider()),
    ],
    child: const MyApp(),
  );
}
// async {
// WidgetsFlutterBinding.ensureInitialized();
// await Firebase.initializeApp(
//   options: DefaultFirebaseOptions.currentPlatform,
// );
// }

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
      initialRoute: Routes.loginSignupScreen,
      routes: {
        Routes.loginSignupScreen: (context) => LoginSignupScreen(),
        Routes.homeScreen: (context) => const HomeScreen(),
      },
    );
  }
}
