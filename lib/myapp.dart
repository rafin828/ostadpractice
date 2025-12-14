import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ostadclassagain2/module12-2/practice_2.dart';
import 'package:ostadclassagain2/travel_ui.dart';
import 'package:ostadclassagain2/stack.dart';

import 'module_15/class_1.dart';
import 'module_15/class_1_2.dart';



class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          // theme: ThemeData(
          //   brightness: Brightness.light,
          //   primaryColor: Colors.deepOrange,
          //   primarySwatch: Colors.red,
          //   // scaffoldBackgroundColor: Colors.orange
          //   elevatedButtonTheme: ElevatedButtonThemeData(
          //     style: ElevatedButton.styleFrom(
          //       backgroundColor: Colors.white,
          //       foregroundColor: Colors.black,
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(20),
          //       ),
          //     ),
          //   ),
          //   inputDecorationTheme: InputDecorationTheme(
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(30),
          //     ),
          //     focusedBorder: OutlineInputBorder(
          //       borderSide: BorderSide(color: Colors.orange),
          //       borderRadius: BorderRadius.circular(30)
          //     ),
          //   ),
          //   textTheme: TextTheme(bodyLarge: TextStyle(fontSize: 30)),
          // ),
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.system,
          title: "hello",
          home: heart(),
          // initialRoute: '/class9',
          routes: {
            //  '/home' : (context)=>Alart(),
            //  '/class2' : (context)=>rafi(),
            //  '/class3' : (context)=>grid(),
            // '/buttonNav' : (context)=>buttomNv(),
            // '/class4' : (context)=>islam(),///Navigation er jonoo use hoi
            //'/class9':(context)=>islam()
          },
        );
      },
    );
  }
}
