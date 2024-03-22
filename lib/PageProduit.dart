import 'package:flutter/material.dart';

import 'ProductPage.dart';
import 'component/ComposantProduit.dart';
class pageProduit extends StatefulWidget {
  const pageProduit({super.key});

  @override
  State<pageProduit> createState() => _pageProduitState();
}

class _pageProduitState extends State<pageProduit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('products',style: TextStyle(fontSize: 15),)
          ],
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,alignment: WrapAlignment.start,
              children: Dataproduct.map((e) =>produit(productimage:e['image'],productname: e['nom'],productprice:e['price'],active:e['active'],icon:Icons.heart_broken,detailImage: e['detailImage']),).toList(),
            ),
          ],
        ),
      ),
          );
  }
}
