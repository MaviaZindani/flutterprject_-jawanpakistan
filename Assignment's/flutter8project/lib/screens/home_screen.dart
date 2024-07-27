import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter8project/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
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

                const SizedBox(height: 20,),

                SizedBox(
                  height: 90,
                  width: double.maxFinite,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/Ellipse1.png'),
                              radius: 30,
                              
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text('Beauty'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/Ellipse2.png'),
                              radius: 30,
                              
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text('Fashion'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/Ellipse3.png'),
                              radius: 30,
                              
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text('Kids'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/images/Ellipse4.png'),
                              radius: 30,
                              
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Text('Mens'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 189,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: styleLightpink,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('50-40% off',
                        style: TextStyle(
                                fontSize: 16,
                                fontWeight:FontWeight.w500,
                                color: styleGreyWhite
                              ),),
                        const Text('Now in (product)',
                        style: TextStyle(
                                fontSize: 12,
                                fontWeight:FontWeight.w300,
                                color: styleGreyWhite
                              ),),
                        const Text('All colours',
                        style: TextStyle(
                                fontSize: 12,
                                fontWeight:FontWeight.w300,
                                color: styleGreyWhite
                              ),),
                        Container(
                          height: 32,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              width: 1,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child:  Text('Shop Now ->',
                            style: TextStyle(
                                  fontSize: 12,
                                  fontWeight:FontWeight.w600,
                                  color: styleGreyWhite
                                ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 60,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Deal of the Day',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight:FontWeight.w500,
                                color: styleGreyWhite
                              ),),
                              Text('22h 55m 20s remaining',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight:FontWeight.w300,
                                color: styleGreyWhite
                              ),),
                            ],
                          ),
                          Container(
                            height: 32,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(
                                width: 1,
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Center(
                              child: Text('View all ->',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight:FontWeight.w600,
                                  color: styleGreyWhite
                                ),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Container(
                  height: 80,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 80,
                            child: Image.asset('assets/images/offer.png')),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Special Offers',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight:FontWeight.w500,
                                color: Colors.black
                              ),),
            
                              Text('We make sure you get the\noffer you need the best price',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight:FontWeight.w300,
                                color: Colors.black
                              ),
                            ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
              Stack(
                alignment: Alignment.centerLeft,
                children:[ 
                  Container(
                  height: 189,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  height: 149,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                    color: Colors.white54
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Image.asset('assets/images/shoe2.png'),
                          Image.asset('assets/images/shoe3.png')
                        ],
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text('Flat and Heel',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight:FontWeight.w500,
                                    color: Colors.black
                                  ),),
                                      
                                  const Text('Stand a chance to get rewarded',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight:FontWeight.w300,
                                    color: Colors.black
                                  ),
                                ),
                                Container(
                                height: 32,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: styleDarkPink,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Center(
                                  child: Text('View all ->',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight:FontWeight.w600,
                                      color: styleGreyWhite
                                    ),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset('assets/images/shoe1.png')
                ]
              ),
                const SizedBox(height: 20,),
              Container(
                  height: 60,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: styleLightpink,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Trending Product',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight:FontWeight.w500,
                              color: styleGreyWhite
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.calendar_today,size: 20,color: styleGreyWhite,),
                                Text('Last Data 29/02/22',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight:FontWeight.w300,
                                  color: styleGreyWhite
                                ),),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          height: 32,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              width: 1,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Center(
                            child: Text('View all ->',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight:FontWeight.w600,
                                color: styleGreyWhite
                              ),),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
              Container(
                height: 189,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 129,
                      decoration: const BoxDecoration(
                        image: DecorationImage(fit: BoxFit.fill,image: AssetImage('assets/images/summer_offer.png'))
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('New Arrivals',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight:FontWeight.w500,
                                  color: Colors.black
                                ),),
                                Text("Summer' 25 Collextions",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight:FontWeight.w300,
                                  color: Colors.black
                                ),),
                              ],
                            ),
                            Container(
                              height: 32,
                              width: 100,
                              decoration: BoxDecoration(
                                color: styleDarkPink,
                                border: Border.all(
                                  width: 1,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Center(
                                child: Text('View all ->',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight:FontWeight.w600,
                                    color: styleGreyWhite
                                  ),),
                              ),
                            ),
                          ],
                        ),
                      ),
                    
                  ],
                ),
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
}