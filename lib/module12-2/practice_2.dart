import 'package:flutter/material.dart';

class todo3 extends StatefulWidget {
  const todo3({super.key});

  @override
  State<todo3> createState() => _todo3State();
}

class _todo3State extends State<todo3> {
  List<String> Task = [];
  TextEditingController texts = TextEditingController();
  add() {
    final rafin = texts.text;
    setState(() {
      if (rafin.isNotEmpty) {
        Task.add(rafin);
        texts.clear();
      }
    });
  }

  remove(int index) {
    setState(() {
      Task.removeAt(index);
    });
  }

  edit(int index) {
    final edit = TextEditingController(text: Task[index]);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("edit task"),
        content: TextField(controller: edit),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("cencel"),
          ),
          ElevatedButton(
            onPressed: () {
              final islam = edit.text;
              setState(() {
                if (islam.isNotEmpty) {
                  Task[index] = edit.text;
                  Navigator.pop(context);
                }
              });
            },
            child: Text("update"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("this is appbar", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: texts,
                    style: TextStyle(color: Colors.blue),
                    decoration: InputDecoration(
                      labelText: "Enter your task",
                      labelStyle: TextStyle(color: Colors.blue, fontSize: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(onPressed: add, child: Text("Add")),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Task.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(Task[index]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () => remove(index),
                        icon: Icon(Icons.delete),
                      ),
                      IconButton(
                        onPressed: () => edit(index),
                        icon: Icon(Icons.edit),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
