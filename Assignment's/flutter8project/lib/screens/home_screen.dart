import 'package:flutter/material.dart';
import 'package:flutter8project/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundColor: styleGreyWhite,
                  child: Icon(Icons.menu_rounded),
                ),
                Image.asset('assets/images/logo.png',height: 31,width: 111,),
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/profile.png'),
                  child: Icon(Icons.menu_rounded),
                ),
              ],
            ),
            ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Ellipse1.png'),
                      radius: 30,
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text('Beauty'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Ellipse2.png'),
                      radius: 30,
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text('Fashion'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Ellipse3.png'),
                      radius: 30,
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text('Kids'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/Ellipse4.png'),
                      radius: 30,
                      
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text('Mens'),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}