import 'package:flutter/material.dart';
import 'package:propertyapp/view/home_screen/widgets/wish_button.dart';

class Hader extends StatelessWidget {
  const Hader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Location'),
                  Text('Los,Angeles, CA'),
                ],
              ),
              WishButton()
            ],
          ),
        ),
       Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text('Disvover Best'),
            SizedBox(
              height: 15,
            ),
            Text('Suitable Property'),
          ],
        ),
      ),
        
      ],
    );
  }
}