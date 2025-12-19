import 'package:flutter/material.dart';

import 'demo.dart';
class cal extends StatefulWidget {
  const cal({super.key});

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
      body:
      SafeArea(
        child: Column(
          children: [
           Expanded(
             child: Container(
               alignment: Alignment.bottomRight,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: [
                   Text("50 + 50", style: TextStyle(
                     color: Colors.white,
                     fontSize: 20, fontWeight: FontWeight.bold,
                   ),),
                   Text("100", style: TextStyle(
                     color: Colors.white,
                     fontSize: 50, fontWeight: FontWeight.bold,
                   ),),
                 ],
               ),
             ),
           ),
            Row(
                children: [
                  calculator2(onClick: () {  }, text: '7',),
                  calculator2(onClick: () {  }, text: '8',),
                  calculator2(onClick: () {  }, text: '9',),
                  calculator2(onClick: () {  }, text: '*',),

                ],

              ),
Row(
  children: [
    calculator2(onClick: () {  }, text: '4',),
    calculator2(onClick: () {  }, text: '5',),
    calculator2(onClick: () {  }, text: '6',),
    calculator2(onClick: () {  }, text: '/',),

  ],
),
            Row(
              children: [
                calculator2(onClick: () {  }, text: '1',),
                calculator2(onClick: () {  }, text: '2',),
                calculator2(onClick: () {  }, text: '3',),
                calculator2(onClick: () {  }, text: '-',),

              ],
            ),
            Row(
              children: [
                calculator2(onClick: () {  }, text: 'C',),
                calculator2(onClick: () {  }, text: '=',),
                calculator2(onClick: () {  }, text: '.',),
                calculator2(onClick: () {  }, text: '+',),

              ],
            ),



          ],
          
        ),
        
      ),
      
    );
  }
}


