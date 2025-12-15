import 'package:flutter/material.dart';

import 'class_1_2.dart';
class splshsereen extends StatefulWidget {
  const splshsereen({super.key});

  @override
  State<splshsereen> createState() => _splshsereenState();
}

class _splshsereenState extends State<splshsereen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>heart()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network("https://img.freepik.com/premium-vector/round-youtube-logo-isolated-white-background_469489-983.jpg?semt=ais_hybrid&w=740&q=80"),
            SizedBox(height: 20,),
            Text("youTub",
            style: TextStyle(color: Colors.red, fontSize: 30),
            ),
            CircularProgressIndicator(
              color: Colors.red,
              strokeWidth: 3,
            )
          ],
        ),
      ),
    );
  }
}
