import 'package:flutter/material.dart';
import 'package:ostadclassagain2/Alart.dart';
import 'package:ostadclassagain2/custom_weidget/city_weidget.dart';
//import 'package:ostadclassagain2/stacknavigation.dart';

class rafi extends StatelessWidget {
  const rafi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Rafin"), backgroundColor: Colors.black),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(height: 200, width: 200, color: Colors.orange),
                Container(height: 150, width: 150, color: Colors.pink),
                Positioned(
                  left: 50,
                  top: 80,
                  bottom: 30,
                  child: Container(height: 80, width: 50, color: Colors.purple),
                ),
              ],
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 70,

                  backgroundImage: NetworkImage(
                    "https://worldbank.scene7.com/is/image/worldbankprod/BD-50Y-Results-Hero-Banner?wid=780&hei=439&qlt=85,0&resMode=sharp",
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  city_weidget(
                    image:
                        'https://www.climaterealityproject.org/sites/default/files/styles/intro_title_impact_small_never_crop/public/bangladesh-head.jpg?itok=iPW2tqVY',
                    tittle: 'bhairab',
                    reating: '',
                  ),
                  SizedBox(width: 20),
                  city_weidget(
                    image:
                        'https://www.climaterealityproject.org/sites/default/files/styles/intro_title_impact_small_never_crop/public/bangladesh-head.jpg?itok=iPW2tqVY',
                    tittle: 'bhairab',
                    reating: '',
                  ),
                  SizedBox(width: 20),
                  city_weidget(
                    image:
                        'https://www.climaterealityproject.org/sites/default/files/styles/intro_title_impact_small_never_crop/public/bangladesh-head.jpg?itok=iPW2tqVY',
                    tittle: 'bhairab',
                    reating: '',
                  ),
                  SizedBox(width: 20),
                  city_weidget(
                    image:
                        'https://www.climaterealityproject.org/sites/default/files/styles/intro_title_impact_small_never_crop/public/bangladesh-head.jpg?itok=iPW2tqVY',
                    tittle: 'bhairab',
                    reating: '',
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              child: Text("next"),
            ),
          ],
        ),
      ),
    );
  }
}
