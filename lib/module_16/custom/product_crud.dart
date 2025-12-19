import 'package:flutter/material.dart';
import 'package:ostadclassagain2/module_16/model/product_model.dart';
class product_crud extends StatelessWidget {
  final Data product;
  const product_crud({
    super.key,
    required this.product
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: Image.network(
               ( product.img != null && product.img.toString().startsWith('http')) ?
                product.img.toString(): 'https://upload.wikimedia.org/wikipedia/commons/1/14/No_Image_Available.jpg',
              ),
            ),
            Text(
              product.productName.toString(),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "price : ${product.unitPrice} | QYT:${product.qty}",
              style: TextStyle(color: Colors.black54, fontSize: 15),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit, color: Colors.orange),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete, color: Colors.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}