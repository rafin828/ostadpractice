import 'package:flutter/material.dart';

import '../Alart.dart';
import '../gridiew.dart';
import '../practice.dart';

class tab extends StatelessWidget {
  const tab({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("tab", style: TextStyle(color: Colors.green)),
          backgroundColor: Colors.black,
          bottom: TabBar(
           indicatorColor: Colors.orange,
            tabs: [
              Tab(icon: Icon(Icons.home, color: Colors.orange,), text: "home",),
              //is scroloing true dela eta auto scrooling hobe
              Tab(icon: Icon(Icons.settings, color: Colors.orange,), text: "seting"),
              Tab(icon: Icon(Icons.favorite, color: Colors.orange,), text: "favorite"),
            ],
          ),
          
        ),
        body: TabBarView(children: [
          // Container(
          //   height: 200,
          //   color: Colors.red,
          //   child: Center(child: Text("home")),
          // ),
          // Container(
          //   height: 200,
          //   color: Colors.green,
          //   child: Center(child: Text("setting")),
          // ),
          // Container(
          //   height: 200,
          //   color: Colors.pink,
          //   child: Center(child: Text("favorite")),
          // ),
          Alart(),
          grid(),
          tanvir()



        ]),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            children: [
              DrawerHeader(child: Column(
                children: [
                  CircleAvatar(
                    radius:40,
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuNhTZJTtkR6b-ADMhmzPvVwaLuLdz273wvQ&s"),
                    
                  ),
                  SizedBox(height: 5,),
                  Text("tanvirul islam rafin", style: TextStyle(fontSize: 20),),
                  Text("rafrafin1432@gmail.com", style: TextStyle(fontSize: 12),)
                ],

              )),
              ListTile(
                title: Text("home"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>tanvir()));
                },
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0,vertical: -2),
                title: Text("setting"),
              ),
              ListTile(
                title: Text("privacy"),
              ),
              ListTile(
                title: Text("favorite"),
              ),
              ListTile(
                title: Text("security"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  tanvir() {}
}
