import 'package:flutter/material.dart';
import 'package:ostadclassagain2/module_16/product_controller.dart';

import 'custom/product_crud.dart';

class crud extends StatefulWidget {
  const crud({super.key});

  @override
  State<crud> createState() => _crudState();
}

class _crudState extends State<crud> {
  Productcontroller productcontroller=Productcontroller();
  Future fetchdata()async{
   await productcontroller.fetchusers();
   setState(() {

   });
  }

  @override
 void initState() {
    // TODO: implement initState

     super.initState();
  fetchdata();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("product crud"),
        backgroundColor: Colors.orange,
      ),
      body: GridView.builder(
        itemCount: productcontroller.products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 10,
          childAspectRatio: 0.8,
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          var product=productcontroller.products[index];
          return product_crud(product: product,);
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),),
    );
  }
}


