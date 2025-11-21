import 'package:flutter/material.dart';
import 'package:ostadclassagain2/practice.dart';
import 'package:ostadclassagain2/stack.dart';

import 'Alart.dart';
import 'gridiew.dart';
import 'modul10;class3.dart';
import 'module11and 1.dart';
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
      home: Alart(),
    );
  }
}

