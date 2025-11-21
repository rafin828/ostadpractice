import 'package:flutter/material.dart';
class photo extends StatelessWidget {
  const photo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("page 2"),),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("back"),
          ),
        ],
      ),


    );

  }
}
