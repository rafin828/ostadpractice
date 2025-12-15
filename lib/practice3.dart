import 'package:flutter/material.dart';
class number extends StatefulWidget {
  const number({super.key});

  @override
  State<number> createState() => _numberState();
}

class _numberState extends State<number> {
  bool heart=false;
  bool isPassword=false;
  Heart(){
    setState(() {
      heart=!heart;
    });

  }
  password(){
    setState(() {
      isPassword=!isPassword;
    });
    Future.delayed(Duration(seconds: 4),() {
      ;
      setState(() {
        isPassword = false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is heart", style: TextStyle(color: Colors.yellow),),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed:Heart, color: heart?Colors.red:Colors.grey,
                icon: Icon(heart?Icons.favorite:Icons.favorite_border, size: 300,)),

            TextField(
              obscureText: !isPassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),

                ),
                hintText: "password",
                suffixIcon: IconButton(onPressed:password , icon:
                Icon(isPassword?Icons.visibility:Icons.visibility_off))
              ),

            )
          ],
        ),
      ),
    );
  }
}
