import 'package:flutter/material.dart';
class tanvir extends StatelessWidget {
  const tanvir({super.key});

  @override
  Widget build(BuildContext context) {
    firstalert(){
      showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text("are you sure"),
        content:Text('delet this comtent?'),
        actions: [
          TextButton(onPressed: (){}, child: Text("ok")),
          ElevatedButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("cencle"))
        ],

      ));
    }
    secondalert(){
      showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text("thi is warning"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.warning)
              ],
            ),
            SizedBox(height: 20,),
            Text("this is to infrom you that we are the studnt and are you sure to delete this contene.you cannot find this content again."),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("ok"))
          ],
        )

      ));
    }
    optionallert(){
      showDialog(context: context, builder: (context)=>SimpleDialog(
        title: Text("this is simp;e alert"),
        children: [
          SimpleDialog(
            children: [
              Text("option 1")
            ],
          ),
          SimpleDialog(
            children: [
              Text("option 1")
            ],
          ),
          SimpleDialog(
            children: [
              Text("option 1")
            ],
          ),
        ],
      ));
    }
    bottomsheet(){
      showModalBottomSheet(context: context, builder: (context)=>Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: Text("hello rafin"),
            ),
            ListTile(
              title: Text("hello rafin"),
            ),
            ListTile(
              title: Text("hello rafin"),
            ),
          ],
        ),
      ));
    }
    customdialog(){
      showDialog(context: context, builder: (context)=>Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD-hUGaWKK_Rpdc834sNq-_bjxyNlv0zI57g&s"),
            SizedBox(height: 10,),
            Text("this is custom allert"),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("ok")),
          ],
        ),
      ));
    }
    loeadingallert(){
      showDialog(context: context, builder: (context)=>Dialog(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
            Text("loeading.......")
            ],
          ),
        ),
      ));
    }
    showsnakbar(){
      ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text("THIS IS SNACKBAR"))
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("hello wold", style: TextStyle(color: Colors.red),),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              firstalert();
            }, child: Text("first alert")),
            ElevatedButton(onPressed: (){
              secondalert();
            }, child: Text("second alert")),
            ElevatedButton(onPressed: (){
              optionallert();
            }, child: Text("thired alert")),
            ElevatedButton(onPressed: (){
              bottomsheet();
            }, child: Text("forth alert")),
            ElevatedButton(onPressed: (){
              customdialog();
            }, child: Text("fifth alert")),
            ElevatedButton(onPressed: (){
              loeadingallert();
            }, child: Text("sixth alert")),
            ElevatedButton(onPressed: (){
              showsnakbar();
            }, child: Text("seventh alert")),




          ],
        ),
      ),
    );
  }
}

