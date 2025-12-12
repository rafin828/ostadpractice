import 'package:flutter/material.dart';
class ratik extends StatelessWidget {

  const ratik({super.key});

  @override
  Widget build(BuildContext context) {
    Size _sereensize=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("hello world", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,width: 200,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20,),
           AspectRatio(aspectRatio: 7/8,
           child: Container(
             color: Colors.green,
           ),
           ),
            SizedBox(height: 20,),
            Container(
              height: _sereensize.height*0.5,
              width: _sereensize.width*0.2,
              color: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
