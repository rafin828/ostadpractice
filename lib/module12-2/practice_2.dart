import 'package:flutter/material.dart';

class testt extends StatelessWidget {
  const testt({super.key});

  @override
  Widget build(BuildContext context) {
    Size screemsize = MediaQuery.of(context).size;
    final bool isTablet = screemsize.width > 600;
    final Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(title: Text("responsive")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(color: Colors.green, height: 50, width: 50),
            AspectRatio(
              aspectRatio: 20 / 10,
              child: Container(color: Colors.red),
            ),
            Text(
              "my name is rafin",
              style: TextStyle(fontSize: screemsize.width > 600 ? 32 : 18),
            ),
            SizedBox(height: 20),
            FractionallySizedBox(
              widthFactor: 0.9,
              child: Container(color: Colors.yellow, width: 40, height: 200),
            ),
            SizedBox(height: 20),
            Text("this is  ${isTablet ? 'tablet' : 'mobile'}"),
            isTablet
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.search, size: 30),
                      Icon(Icons.apple, size: 30),
                      Icon(Icons.settings, size: 30),
                      Icon(Icons.person, size: 30),
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.search, size: 30),
                      Icon(Icons.apple, size: 30),
                      Icon(Icons.settings, size: 30),
                      Icon(Icons.person, size: 30),
                    ],
                  ),
            orientation == Orientation.portrait
                ? Row(
                    children: [
                      Icon(Icons.map, size: 50),
                      Icon(Icons.laptop_windows, size: 50),
                      Icon(Icons.password, size: 50),
                      Icon(Icons.face, size: 50),
                    ],
                  )
                : Column(
                    children: [
                      Icon(Icons.map, size: 50),
                      Icon(Icons.laptop_windows, size: 50),
                      Icon(Icons.password, size: 50),
                      Icon(Icons.face, size: 50),
                    ],
                  ),

            SizedBox(height: 50),
            orientation == Orientation.landscape
                ? Text("my name is rafim", style: TextStyle(fontSize: 30))
                : SizedBox(),
            SizedBox(height: 20),
            Text("rafin"),
            Text("rafin"),
            Text("rafin"),
            Text("rafin"),

            SingleChildScrollView(
              child: ListView.builder(
                shrinkWrap: true,
                // physics: NeverScrollableScrollPhysics(),
                itemCount: 300,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(index.toString()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
