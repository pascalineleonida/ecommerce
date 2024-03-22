import 'package:flutter/material.dart';
import 'Cart.dart';
import 'component/Button.dart';
import 'component/ComposantDetail.dart';
import 'component/ComposantDetail2.dart';

List Dataimage = [
  {
    'image': 'images/ll.png',
    'images': 'images/l.jpg',
    'imge': 'images/gg.jpg',
    'img': 'images/w.jpg',
    'imae': 'images/s.jpg',
  },
];
List Datadetail = [
  {
    'title': 'Wireless Controller for PS4',
    'detailtitle':
        'Wireless Controller for PS4 gives you \n What you want in your gaming from\n over precision control your games to',
    'nom': 'See More Detail',
    'Iconne': Icon(Icons.navigate_next),
    'icon': Icon(Icons.heart_broken),
    'icone': Icon(Icons.circle),
    'iconn': Icon(Icons.remove),
    'icons': Icon(Icons.add),
  },
];

class detailproduct extends StatelessWidget {
  String? text;
  String? productname;
  String? producttitle;
  String? productprice;
  String? productimage;
  List? detailImage;
  String? prix;
  String? price;
  detailproduct(
      {super.key,
      this.text,
      this.productname,
      this.producttitle,
      this.productprice,
      this.productimage,
      this.detailImage,
      this.prix,
      this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade50,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 80,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    Text(detailImage!.length.toString()),
                    Icon(
                      Icons.ac_unit,
                      color: Colors.orange,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Column(
            children: Dataimage.map((e) => detail(
                  detailImage: detailImage,
                  image: productimage,
                  imag: e['images'],
                  imagP: e['imge'],
                  img: e['img'],
                  images: e['imae'],
                )).toList(),
          ),
          Column(
            children: Datadetail.map((e) => autre(
                  title: productname,
                  detailtitle: e['detailtitle'],
                  nom: e['nom'],
                  iconmore: Icons.navigate_next,
                  icon: Icons.heart_broken,
                  iconcircle: Icons.circle,
                  iconremove: Icons.remove,
                  iconadd: Icons.add,
                )).toList(),
          ),
        ],
      ),
      bottomSheet: Container(
        width: 400,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: GestureDetector(
          onTap: () {
            DataCart.add(
              {
                'image': productimage,
                'text': productname,
                'prix': productprice,
                'price': '*2',
              },
            );
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => cart(),
                ));
          },
          child: Column(
            children: [
              Button(Title: 'Add To Cart', color: Colors.deepOrange),
            ],
          ),
        ),
      ),
    );
  }
}
