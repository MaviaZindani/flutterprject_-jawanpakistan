import 'package:flutter/material.dart';
import 'package:medical_app/presentation/pages/login_screen/login_screen.dart';

class WalkThough extends StatefulWidget {
  const WalkThough({super.key});

  @override
  State<WalkThough> createState() => _WalkThoughState();
}

class _WalkThoughState extends State<WalkThough> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset('assets/images/login_signup_images/login_screen_image_1.png'),
                const SizedBox(height: 20,),
            const Text(
              '''View And Buy\n Medicine Online''',
              maxLines: 2,
              textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),),
            const SizedBox(height: 20,),
            const Text("  Etiam mollis metus non purus\n faucibus sollicitudin. Pellentesque\n sagittis mi. Integer.",
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w300,
              color: Color(0xff090F47)
            ),),
              ],
            ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: const SizedBox(
                      height: 35,
                      width: 80,
                      child: Text('Skip',
                      style: TextStyle(
                        color: Color.fromARGB(255, 177, 177, 177),
                      ),),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color(0xff4157FF),
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color(0xffC4C4C4),
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color(0xffC4C4C4),
                        ),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color(0xffC4C4C4),
                        ),
                      ],
                      
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginScreen()));
                    },
                    child: const SizedBox(
                      height: 35,
                      width: 40,
                      child: Text('Next',
                      style: TextStyle(
                        color: Color(0xff4157FF),
                      ),),
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}