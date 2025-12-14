import 'package:flutter/material.dart';

class heart extends StatefulWidget {
  const heart({super.key});
  @override
  State<heart> createState() => _heartState();
}

class _heartState extends State<heart> {
  bool isfav = false;
  bool ispassword = false;
  toggolfav() {
    setState(() {
      isfav = !isfav;
    });
  }

  showpassword() {
    setState(() {
      ispassword = !ispassword;
    });
    Future.delayed(Duration(seconds: 2),(){
    setState(() {
      ispassword=false;
    });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                obscureText: !ispassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: "password",
                  suffixIcon: IconButton(
                    onPressed: showpassword,
                    icon: Icon(
                      ispassword ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: toggolfav,
                color: isfav ? Colors.red : Colors.grey,
                icon: Icon(
                  isfav ? Icons.favorite : Icons.favorite_border,
                  size: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
