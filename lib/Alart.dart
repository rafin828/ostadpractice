import 'package:flutter/material.dart';

class Alart extends StatelessWidget {
  const Alart({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize=MediaQuery.of(context).size; //jei screen e jabe sei screen er size hobe
    showAllertdialog() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("are you sure"),
            content: Text("delete this contene"),
            actions: [
              TextButton(onPressed: () {}, child: Text("submit")),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("cencle"),
              ),
            ],
          );
        },
      );
    }
    showAllertdialogwithallert(){
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("Installition block"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Icon(Icons.warning, color: Colors.red,size: 40,),
                    SizedBox(width: 5,),
                    Text("warning")
                  ],
                ),
                SizedBox(height: 10),
                Text("this is to infrom you that we are the student and this application is block,please try again latter",
                style: TextStyle(color: Colors.black),),
              ],
            ),
            actions: [
              //TextButton(onPressed: () {}, child: Text("submit")),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("ok"),
              ),
            ],
          );
        },
      );
    };
    showAllertdialogwithoption(){
      showDialog(context: context, builder: (context)=>SimpleDialog(
        title: Text("simple dialg"),
        children: [
          SimpleDialogOption(
            child: Text("option 1"),
          ),
          SimpleDialogOption(
            child: TextFormField(),
          )
        ],

      ));
    };
    buttonsheett(){
      showModalBottomSheet(context: context, builder: (context)=>Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("chose otion", style: TextStyle(fontSize: 18),),
            ListTile(
              title: Text("option 1"),

            ),
            ListTile(
              title: Text("option 1"),

            ),
            ListTile(
              title: Text("option 1"),

            ),
          ],
        ),
      ));
    }
    showcustomdialog(){
      showDialog(context: context, builder: (context)=>Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network("https://yt3.googleusercontent.com/ytc/AIdro_nqx_sCd8ZIeIcodS0sfeMKJ8rVTslmQHUe_udwGNH2Pg=s900-c-k-c0x00ffffff-no-rj"),
            SizedBox(height: 10,),
            Text("custom dalog"),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text("close"))
          ],
        ),
      ));
    }
    showloadingdalog(){
      showDialog(context: context, builder: (context)=>Dialog(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(height: 10,),
              Text("Loeading....."),
            ],
          ),
        ),
      ));
    }
    showsnakebar(){
      ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text("this is snake bar")),
      );
    }



    return Scaffold(
      appBar: AppBar(
        title: Text("alert", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              TextField(),
              Container(
                height: 100,width: 200,
                color: Colors.green,

              ),
              SizedBox(height: 30,),
              Container(
                height: screensize.height*0.5,width:screensize.width*0.3,
                color: Colors.green,

              ),
              Text("my name is rafin ", style: TextStyle(
                  fontSize: screensize.width > 600 ? 32 : 18),),
              Text("this is text theme",
              style: Theme.of(context).textTheme.bodyLarge
              ),
              ElevatedButton(
                onPressed: () {
                  showAllertdialog();
                },
                child: Text("alert1"),
              ),
              ElevatedButton(
                onPressed: () {
                  showAllertdialogwithallert();
                },
                child: Text("alert2"),
              ),
              ElevatedButton(
                onPressed: () {
                  showAllertdialogwithoption();
                },
                child: Text("alert3"),
              ),
              ElevatedButton(
                onPressed: () {
                  buttonsheett();
                },
                child: Text("alert4"),
              ),
              ElevatedButton(
                onPressed: () {
                 showcustomdialog();
                },
                child: Text("diaog"),
              ),
              ElevatedButton(
                onPressed: () {
                  showloadingdalog();
                },
                child: Text("loeading"),
              ),
              ElevatedButton(
                onPressed: () {
                  showsnakebar();
                },
                child: Text("snakebar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
