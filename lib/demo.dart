import 'package:flutter/material.dart';
class calculator2 extends StatelessWidget {
  String text;
  Color? color;
  final VoidCallback onClick;
   calculator2({
    super.key,
    required this.onClick,
    required this.text,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                )
            ),

            onPressed:onClick, child: Text(text,style: TextStyle(
            color: Colors.white, fontSize: 20
        ),)),
      ),
    );
  }
}