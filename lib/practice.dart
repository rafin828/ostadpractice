import 'package:flutter/material.dart';
class rfn extends StatelessWidget {
  const rfn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is rafin"),
        backgroundColor:Colors.orange,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0JYxH9JQ91tSkOAW41ziyLxafPmZ-Dh9izA&s",
              fit: BoxFit.cover,
                height: 250,
                width: double.infinity,
              ),
              Container(height: 250,color: Colors.black.withOpacity(0.3),),
              Positioned(
                  bottom: 150,
                  right: 50,
                  child: Text("explore the World!!",style: TextStyle(color: Colors.white,fontSize: 40),),

              ),
              SizedBox(height: 50,),
              Positioned(
                  bottom: 50,
                  right: 70,

                  child:
              Container(
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "SEARCH....",
                    hintStyle: TextStyle(color: Colors.black),
                    prefixIcon: Icon(Icons.search,color: Colors.black,),

                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  
                ),
              )
              )
            ],
          )
        ],
      ),
    );
  }
}
