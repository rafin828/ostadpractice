import 'package:flutter/material.dart';
class StateClass extends StatefulWidget {
  const StateClass({super.key});

  @override
  State<StateClass> createState() => _StateClassState();
}

class _StateClassState extends State<StateClass> {
  int num=0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(num.toString(),
              style: TextStyle(fontSize: 80,color: Colors.blue),),
              Row(
                children: [
                  Spacer(),
                  IconButton(onPressed: (){
                    setState(() {               ///setstate holo screen refresh kore
                      num++;
                      print('number==$num');
                    });
                  }, icon: Icon(Icons.add,size: 30,)),
                  Spacer(),
                  IconButton(onPressed: (){
                   setState(() {
                     num--;
                     print('number==$num');
                   });
                  }, icon: Icon(Icons.minimize,size: 30,)),
                  Spacer(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
