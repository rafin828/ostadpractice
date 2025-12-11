import 'package:flutter/material.dart';

import '../Alart.dart';
import '../gridiew.dart';
import '../stack.dart';

class buttomNv extends StatefulWidget {
  const buttomNv({super.key});

  @override
  State<buttomNv> createState() => _buttomNvState();
}

class _buttomNvState extends State<buttomNv> {
  int _selectedpage =0;
 List Pages=[
rafi(),
   grid(),
   Alart()
  ];
 onTab(int index){
setState(() {
  _selectedpage = index;
});

 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[_selectedpage],

      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedpage,
          onTap: onTab,

          items:[

          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: "password")
    ]
      
      ),
    );
  }
}

