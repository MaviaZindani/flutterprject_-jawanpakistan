import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('init state');
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print('did change dependencies');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      
      DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Column(
          children: [
            TabBar(
              tabs: [
              Text('mavia'),
              Text('mavia'),
              Text('mavia'),
            ]),
        
            Expanded(
              child: Container(
                child: TabBarView(
                  children: [
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  )
                  ,Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  )
                  ,Container(
                    height: 200,
                    width: 200,
                    color: Colors.red,
                  )
                ]),
              ),
            )
          ],
        ),
      ),
      
    );
  }
}