import 'package:flutter/material.dart';
class calclator_botton_2 extends StatelessWidget {

  String text;
  Color? color;
  final VoidCallback onClick;
  calclator_botton_2({
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
              padding: EdgeInsets.all(20),
                backgroundColor: color ?? Colors.grey[800],
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                )
            ),
            onPressed:onClick , child: Text(text, style:
          TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),)),
      ),
    );
  }
}