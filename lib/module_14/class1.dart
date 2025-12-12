import 'package:flutter/material.dart';
class responsive extends StatelessWidget {
  const responsive({super.key});

  @override
  Widget build(BuildContext context) {
    Size screensize=MediaQuery.of(context).size;
    final bool isTablet=screensize.width> 600;
    final Orientation orientation=MediaQuery.of(context).orientation;
    return  Scaffold(
      appBar: AppBar(
        title: Text("responsive",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),

        ///Expanded
        ///Flexible
        ///FittedBox
        /// Wrap
        /// AspectRatio
        child: SingleChildScrollView(
          child: Column(
            children: [

                ListView.builder(
                  shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 20,
                    itemBuilder:

                (context,index){
                  return ListTile(
                    title: Text(index.toString()),
                  );

                }),
              ///<600 px → Mobile
              /// 600-1000 px → Tablet
              /// >1000 px → Desktop




              Text("device in ${orientation} mod"),



              orientation==Orientation.portrait?
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone,size: 50,),
                  Icon(Icons.tablet,size: 50,),
                  Icon(Icons.apple,size: 50,),
                  Icon(Icons.settings,size: 50,),
                  Icon(Icons.search,size: 50,),
                  Icon(Icons.lock,size: 50,),

                ],
              ):
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone,size: 50,),
                  Icon(Icons.tablet,size: 50,),
                  Icon(Icons.apple,size: 50,),
                  Icon(Icons.settings,size: 50,),
                  Icon(Icons.search,size: 50,),
                  Icon(Icons.lock,size: 50,),
                ],
              ),


               orientation==Orientation.landscape? Text("my name is rafin islam",
                style: TextStyle(
                  fontSize: 32,
                  color: Colors.red
                ),
              ):SizedBox(),



              Text("fixd size no"),
              SizedBox(height: 10,),
              Container(
                height: 100,width: 150,
                color: Colors.green,
                child: Text("fixd sze 150x100"),
              ),
              SizedBox(height: 10,),
          AspectRatio(aspectRatio:20/9 ,
          child: Container(
          color: Colors.red,
          ),
          ),
              Container(
                color: Colors.purple,
                width: screensize.width*0.5,
                height: screensize.height*0.2,
              ),
              Text("this is text",style: TextStyle(
                fontSize: screensize.width>600 ? 32 :18
          
              ),),
              SizedBox(height: 500,),
              FractionallySizedBox(
                widthFactor: 0.8,
                child: Container(
                  height: 40,
                  width: 200,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 10,),

              
              Text("this is rafin${isTablet? 'this is tablet' : 'mobile'}"),
              isTablet? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone,size: 50,),
                  Icon(Icons.tablet,size: 50,),
                  Icon(Icons.desktop_windows,size: 50,),

                ],
              ):
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.phone,size: 50,),
                  Icon(Icons.tablet,size: 50,),
                  Icon(Icons.desktop_windows,size: 50,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
