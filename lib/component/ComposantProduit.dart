
import 'package:flutter/material.dart';

import '../PageDetail.dart';
class produit extends StatelessWidget {
String? productname;
String? productprice;
String? productimage;
IconData? icon;
int? active;
dynamic detailImage;
String? prix;
String? price;
   produit({super.key,this.productname,this.productprice,this.productimage,this.icon,this.active,this.detailImage,this.price,this.prix});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => detailproduct(productname: productname,productimage: productimage,productprice: productprice,detailImage: detailImage,prix: prix,price: price),));
    },
      child: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width/2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Container(
                width: 130,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Image(image: AssetImage(productimage.toString()),height: 100,width: 100,),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(productname.toString()),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 60,left: 10),
                  child: Text(productprice.toString(),style: TextStyle(color: Colors.red)),
                ),
                CircleAvatar(
                  backgroundColor: active==0?Colors.red.shade100:Colors.grey,
                  minRadius: 15,
                  child: Row(
                    children: [
                      Icon(icon,color:8==0?Colors.red:Colors.grey.shade200),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
