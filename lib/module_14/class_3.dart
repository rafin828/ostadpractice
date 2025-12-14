import 'package:flutter/material.dart';

class todo extends StatefulWidget {
  const todo({super.key});

  @override
  State<todo> createState() => _todoState();
}

class _todoState extends State<todo> {
  TextEditingController Taskcontroller = TextEditingController();
  List<String> Task = [];
  addTask() {
    final tasks = Taskcontroller.text;
    if (tasks.isNotEmpty) {
      setState(() {
        Task.add(tasks);
        Taskcontroller.clear();
      });
    }
  }

  delete(int index) {
    setState(() {
      Task.removeAt(index);
    });
  }

  edittask(int index) {
    final textedit = TextEditingController(text: Task[index]);
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("edit task"),
        content: TextField(controller: textedit),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("cencle"),
          ),
          ElevatedButton(
            onPressed: () {
              final rafin = textedit.text;
              setState(() {
                if (rafin.isNotEmpty) {
                  Task[index] = textedit.text;
                  Navigator.pop(context);
                }
              });
            },
            child: Text("UPDATE"),
          ),
        ],
      ),
    );
    Taskcontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("todo app"), backgroundColor: Colors.green),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: Taskcontroller,
                    style: TextStyle(color: Colors.orange),
                    decoration: InputDecoration(
                      labelText: "enter task",
                      labelStyle: TextStyle(color: Colors.orange),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(onPressed: addTask, child: Text("Add")),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: Task.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(Task[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () => edittask(index),
                          icon: Icon(Icons.edit, color: Colors.red),
                        ),
                        IconButton(
                          onPressed: () => delete(index),
                          icon: Icon(Icons.delete, color: Colors.green),
                        ),
                      ],
                    ),
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
