import 'package:flutter/material.dart';
import 'package:propertyapp/compontent.dart';

class WishButton extends StatelessWidget {
  const WishButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: 50,
        width: 35,
        decoration: BoxDecoration(
          color: homeGrayWhite,
          borderRadius: BorderRadius.circular(12),
          boxShadow: List.filled(3,0 as BoxShadow,growable: true ),
        ),
        child: const Icon(Icons.wallet_membership_outlined),
      ),
    );
  }
}