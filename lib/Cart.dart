import 'package:flutter/material.dart';

import 'component/Button.dart';
import 'component/ComposantCart.dart';
import 'component/ComposantCartBottom.dart';
List DataCart=[

];
List DataBottom=[
  {
    'icon':Icon(Icons.list_alt_sharp),
    'text':'Add voucher code',
    'icon':Icon(Icons.navigate_next),
    'title':'Total :',
    'prix':'337.15',
  },


];
class cart extends StatelessWidget {
  const cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('Your Cart',style: TextStyle(fontSize: 15),),
            Text('3 items',style: TextStyle(fontSize: 10),)
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: DataCart.map((e) =>CartComposant(image:e['image'],text: e['text'],prix:e['prix'],price:e['price']),).toList(),
        ),
      ),
      bottomSheet: Container(
        width: 400,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
        ),
        child: Column(
           children: DataBottom.map((e) =>CartBottom(icon:Icons.list_alt_sharp,text:'Add voucher code',icons:Icons.navigate_next,title:'Total :',prix:'337.15'),).toList(),
    ),

      ),
    );
  }
}
