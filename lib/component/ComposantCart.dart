import 'package:flutter/material.dart';
class CartComposant extends StatelessWidget {
  String? image;
  String? text;
  String? prix;
  String? price;
   CartComposant({super.key,this.image,this.text,this.prix,this.price});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 20),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image(image: AssetImage(image.toString()),height: 100,width: 100,),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,top: 10),
                    child: Text(text.toString()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 100,top: 8),
                    child: Row(
                      children: [
                        Text(prix.toString(),style: TextStyle(color: Colors.red)),
                        Text(price.toString(),),
                      ],
                    ),
                  ),
                ],
              ),

            ],
          ),

        ],
      ),
    );
  }
}
