import 'package:flutter/material.dart';
import 'package:tabbar/first.dart';
import 'package:tabbar/fourth.dart';
import 'package:tabbar/second.dart';
import 'package:tabbar/third.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
      
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 29, 135, 86),
          actions: [
            Icon(Icons.camera_alt_outlined,color: Colors.white),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(Icons.search,color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Icon(Icons.more_vert),
            ),
          ],
          title: Text('WhatsApp',style: TextStyle(fontSize: 20,color: Colors.white),),
          bottom: TabBar(
            dividerColor: const Color.fromARGB(255,29, 135, 86),

            indicatorSize: TabBarIndicatorSize.tab,
            


            tabs: [
              Icon(Icons.groups_3_rounded,color: Colors.white,),
              Text('Chats',style: TextStyle(color: Colors.white),),
              Text('Update',style: TextStyle(color: Colors.white),),
              Text('Calls',style: TextStyle(color: Colors.white),)


            ]
            ),
        ),
        body: TabBarView(
          children: [
            First(),
            Second(),
            Third(),
            Fourth()

          ]
        ),
        
      ),
    );
  }
}