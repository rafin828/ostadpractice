import 'package:flutter/material.dart';
class expen extends StatelessWidget {
  const expen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("expended"),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Text("rafin"),
          Text("rafin"),
          Text("rafin"),
          Text("rafin"),
          Text("rafin"),


          Flexible(                                 ///expended o use kora jai
            child: ListView.builder(
                shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
                itemCount: 20,
                itemBuilder:
            
                    (context,index){
                  return ListTile(
                    title: Text(index.toString()),
                  );
            
                }),
          ),
          Text("rafin"),
          Text("rafin"),
          Text("rafin"),
          Container(
            color: Colors.red,
            height: 100,
          ),
          Flexible(
            flex: 1,///expended holo khali jaiga sob niye nbe
            child: Container(
              color: Colors.green,
              height: 100,
            ),
          ),
          Container(
            color: Colors.yellow,
            height: 100,
          ),

        ],
      ),
    );
  }
}
