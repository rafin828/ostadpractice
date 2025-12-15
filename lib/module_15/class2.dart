import 'package:flutter/material.dart';

import 'class_1_2.dart';
class lifecicle extends StatefulWidget {
  const lifecicle({super.key});

  @override

  State<lifecicle> createState() => _lifecicleState();
}

class _lifecicleState extends State<lifecicle> {
  String name='demo';
  Color bgcolor=Colors.red;
  @override
  void initState() {
    name='rafin';
    bgcolor=Colors.purple;
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
     Container(
       decoration: BoxDecoration(
         color: bgcolor,
         border: Border.all(color: Colors.blueAccent, width: 2),
         
       ),
       child: Text("hello ${name}",
       style: TextStyle(fontSize: 30, color: Colors.white),
       ),
     )

    ],
  ),
),
    );
  }
}
