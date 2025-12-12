import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class package extends StatelessWidget {
  const package({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 100.r,
                height: 100.r,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10.r)
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 0.5.sw,   ///package use koar somoi sw o use kora jai
                    height: 200.h,
                    color: Colors.pink,
                    child: Text("my actual width${0.5.sw}, my actual hight ${200.h}"),
                  ),
                  // Container(
                  //   child: Text("my hight is${200.h}, and my weight is ${180.w}"),
                  //   constraints: BoxConstraints(
                  //     maxHeight: 200,
                  //     maxWidth: 200
                  //
                  //   ).hw,
                  //   height: 200.h,
                  //   width: 200.w,
                  //   color: Colors.yellow,
                  // )
                ],
              ),

              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              Text("this is text",style: TextStyle(
                fontSize: 30
              ),),
              Container(
                height: 200.h, ///package use er jonno hight and weight er por h and w use hoisa
                width: 200.w,
                color: Colors.purple,




              ),
              Text("this is text 2",style: TextStyle(
                  fontSize: 30.sp   ///package use er jonno front size pore sp deta hoi
              ),),

            ],
          ),
        ),
      ),
    );
  }
}
