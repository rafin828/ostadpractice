import 'package:flutter/material.dart';
class grid extends StatelessWidget {
  const grid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("gridview .builder", style: TextStyle(

          color: Colors.white,
        ),),
        backgroundColor: Colors.black,
      ),
      body: GridView.count(

          crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      children:
        List.generate(10, (index){
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero
            ),
            elevation: 30,
            color: Colors.red,
            child: Column(
              children: [
                Icon(Icons.warning),
                Text("Rafin")
              ],
            ),

          );

        })

      ),
    );
  }
}
