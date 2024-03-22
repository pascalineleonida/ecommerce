import 'package:flutter/material.dart';
class detail extends StatelessWidget {
  String? image;
  String? images;
  String? imag;
  String? img;
  String? imagP;
  List? detailImage;
   detail({super.key,this.image,this.images,this.imag,this.img,this.imagP, this.detailImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 30),
              child: Image(image:  AssetImage(image.toString()),width: 250,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
             children: detailImage!.map((e) => Padding(
               padding: const EdgeInsets.only(left: 30,top: 10),
               child: Container(
                   width: 50,
                   height: 50,
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.red),
                     color: Colors.white,
                   ),
                   child: Image(image: AssetImage(e.toString()),width: 30,height: 30,)
               ),
             ),).toList()
            ),
          ],
        ),
      ],
    );
  }
}
