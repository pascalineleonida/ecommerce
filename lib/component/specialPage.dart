import 'package:ecommerce/component/ComposantProduit.dart';
import 'package:flutter/material.dart';

import '../PageProduit.dart';
class special extends StatelessWidget {
  String? image;
  String? title;
  String? nom;
   special({super.key,this.image,this.title,this.nom});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => pageProduit(),));
    },
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Container(
          width: 230,
          height: 98,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image.toString()),
            ),
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          child: Column(
            children: [
              Padding(
                padding:
                const EdgeInsets.only(right: 150, top: 10),
                child: Text(title.toString(),
                    style: TextStyle(color: Colors.white)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Text(nom.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
