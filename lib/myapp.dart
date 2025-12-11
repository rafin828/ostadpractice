import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ostadclassagain2/module12-2/practice_2.dart';
import 'package:ostadclassagain2/practice.dart';
import 'package:ostadclassagain2/stack.dart';

import 'Alart.dart';
import 'gridiew.dart';
import 'modul10;class3.dart';
import 'module11and 1.dart';
import 'module12-2/moudule_12_clss3.dart';
import 'module12-2/tab.dart';
import 'module_14/class1.dart';
import 'module_14/class_1_expended.dart';
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.deepOrange,
        primarySwatch: Colors.red,
       // scaffoldBackgroundColor: Colors.orange
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            )
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.orange)
          ),
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(fontSize: 30)
        )
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      title: "hello",
      home: expen(),
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
  }
}

