import 'package:flutter/material.dart';
import 'package:houseapp/compontent.dart';

class HouseCard extends StatelessWidget {
  const HouseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 300,
      decoration: BoxDecoration(
        color: homeGrayBlue,
        borderRadius: BorderRadius.circular(22),
      ),
      child: const Column(
        children: [
          Text(''),
          const SizedBox(
            height: 10,
          ),
          Text(''),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(Icons.bed),
              const SizedBox(
                 width: 10,
                ),
              Text(''),
              const SizedBox(
                width: 10,
               ),
               Icon(Icons.bathtub_outlined),
              const SizedBox(
                 width: 10,
                ),
              Text(''),
              const SizedBox(
                width: 10,
               ),
               Icon(Icons.garage_outlined),
              const SizedBox(
                 width: 10,
                ),
              Text(''),
              const SizedBox(
                width: 10,
               ),
            ],
          )
        ],
      ),
    );
  }
}