import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class class1 extends StatelessWidget {
  const class1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("appList", style: TextStyle(

          color: Colors.red
        ),),
        backgroundColor: Colors.black,
      ),
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,

          itemBuilder: (context, index){

          return Container(


            width: 120,
            height: 20,
            color: Colors.red,
            child:Card(
              child: Text("rafin= $index"),
            ),
          );


          //   Card (
          //     child: ListTile(
          //   title: Text("rafin"),
          //   leading: Icon(Icons.phone),
          // )
          //   );

          })

      // ListView(
      //   children: [
      //     ListTile(
      //       title:Text("this is tittle"),
      //       leading: Icon(Icons.phone),
      //       trailing: Icon(Icons.delete),
      //       subtitle: Text("326572367"),
      //
      //     ),

      //   ],
      // ),
    );
  }
}
