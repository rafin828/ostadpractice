import 'package:flutter/material.dart';
import 'package:ostadclassagain2/gridiew.dart';
import 'package:ostadclassagain2/module11and%201.dart';
import 'package:ostadclassagain2/practice.dart';
class tnv extends StatefulWidget {
  const tnv({super.key});

  @override
  State<tnv> createState() => _tnvState();
}

class _tnvState extends State<tnv> {
  int _selectedpages=0;
  List Pages=[
    rfn(),
    class1(),
    grid()
  ];
  onTab(int index){
    setState(() {
      _selectedpages=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[_selectedpages],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedpages,
          onTap: onTab,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.search ),label: "search"),
            BottomNavigationBarItem(icon: Icon(Icons.person ),label: "profil"),
            BottomNavigationBarItem(icon: Icon(Icons.settings ),label: "setting"),
          ]

      ),
    );
  }
}
