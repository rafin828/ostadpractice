import 'package:flutter/material.dart';

class city_weidget extends StatelessWidget {
  final String image,tittle, reating;
  const city_weidget({
    super.key, required this.image, required this.tittle, required this.reating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              image: DecorationImage(image:NetworkImage(image))
            ),

            ),
        Positioned(
          bottom: 20,
          right: 50,
          child: Text(tittle, style: TextStyle(
              color: Colors.white

          ),),
        ),
        ElevatedButton(onPressed: (){}, child: Text("reating", style: TextStyle(color: Colors.red),))
      ],
    );
  }
}