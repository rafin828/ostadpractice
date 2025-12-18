import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class api extends StatefulWidget {
  const api({super.key});

  @override
  State<api> createState() => _apiState();
}

class _apiState extends State<api> {
  List users=[];
  Future fatchusers() async{
    final response= await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"),
    headers: {
      'Accept': 'application/json'
    }
    ) ;


    if(response.statusCode==200){
      users= jsonDecode(response.body);
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fatchusers();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text("api", style: TextStyle(color: Colors.white),),
  backgroundColor: Colors.black,
),
      body: ListView.builder(
        itemCount: users.length,
itemBuilder: (context, index){
          final user=users[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: Text(user["name"][0]),
              ),
              title: Text(user["name"]),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("username :${user["username"]} "),
                  Text('email: ${user["email"]}'),
                  Text("phone :${user["phone"]}"),
                  Text("website : ${user["website"]}"),
            
                ],
              ),
            ),
          );
},
      ),
    );
  }
}
