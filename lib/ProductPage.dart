import 'package:ecommerce/PageProduit.dart';
import 'package:flutter/material.dart';

import 'ChatPage.dart';
import 'Profile.dart';
import 'component/ComposantProduit.dart';
import 'component/specialPage.dart';
int? index = 0;
bool isClick = true;
bool isClicked = true;
bool isClic = true;
bool isClik = true;

List Image1=[
  'images/s.jpg',
  'images/ll.png',
  'images/w.jpg',
  'images/gg.jpg',
];
List Image2=[
  'images/mm.png',
];
List Image3=[
  'images/i.jpg',
];
List Image4=[
  'images/zz.png',
];
List Dataproduct=[
  {
    'image':'images/ll.png',
    'detailImage':Image1,
    'nom':'Wireless Controller for PS4',
    'price':'64.99',
    'active':1,
    'icon':Icon(Icons.heart_broken),
  },
  {
    'image':'images/mm.png',
    'detailImage':Image2,
    'nom':'Nike Sport White - Man Pant',
    'title':'See more Detail',
    'price':'50.5',
    'icon':Icon(Icons.heart_broken),'active':0,
  },
  {
    'image':'images/ii.png',
    'detailImage':Image3,
    'nom':'Gloves XC Omega - Polygon',
    'title':'See more Detail',
    'price':'36.55',
    'icon':Icon(Icons.heart_broken),
    'active':1,
  },
  {
    'image':'images/zz.png',
    'detailImage':Image4,
    'nom':'Logitech Head',
    'price':'20.2',
    'icon':Icon(Icons.heart_broken),
    'active':0,
  },
  {
    'image':'images/ll.png',
    'detailImage':Image1,
    'nom':'Wireless Controller for PS4',
    'title':'See more Detail',
    'price':'64.99',
    'active':1,
    'icon':Icon(Icons.heart_broken),
  },
  {
    'image':'images/mm.png',
    'detailImage':Image2,
    'nom':'Nike Sport White - Man Pant',
    'title':'See more Detail',
    'price':'50.5',
    'icon':Icon(Icons.heart_broken),'active':0,
  },
  {
    'image':'images/ii.png',
    'detailImage':Image3,
    'nom':'Gloves XC Omega - Polygon',
    'title':'See more Detail',
    'price':'36.55',
    'icon':Icon(Icons.heart_broken),
    'active':1,
  },
  {
    'image':'images/zz.png',
    'detailImage':Image4,
    'nom':'Logitech Head',
    'price':'20.2',
    'icon':Icon(Icons.heart_broken),
    'active':0,
  },
];
List Dataspecial=[
  {
    'image':'images/j.jpg',
    'nom':'18 Brands',
    'title':'Smartphone',
  },
  {
    'image':'images/o.jpg',
    'nom':'24 Brands',
    'title':'Fashon',
  },


];
class product extends StatefulWidget {
  const product({super.key});

  @override
  State<product> createState() => _productState();
}


class _productState extends State<product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: index==0?AppBar(
        title: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              prefixIcon: Icon(Icons.search), hintText: 'Search product'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_cart, color: Colors.grey.shade400),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.shade100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.notification_important, color: Colors.grey.shade400),
                    ],
                  ),
                ),
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.red,
                  ),
                  child: Column(
                    children: [
                      Text('3',style: TextStyle(fontSize: 10,color: Colors.white),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ):PreferredSize(preferredSize: Size.fromHeight(0), child: Text('')),
      body: IndexedStack(index: index,
        children: [
          Container(child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 320,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple.shade900,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 150, top: 10),
                          child: Text('A Summer Surpise',
                              style: TextStyle(color: Colors.white)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 100),
                          child: Text('Cashback 20%',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 30),
                  child: Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.orange.shade100,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Icon(Icons.flash_auto,
                                  color: Colors.red.shade200, size: 30),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.orange.shade100,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Icon(Icons.message,
                                    color: Colors.red.shade200, size: 30),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.orange.shade100,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Icon(Icons.gamepad_outlined,
                                    color: Colors.red.shade200, size: 30),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.orange.shade100,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Icon(Icons.wallet_giftcard,
                                    color: Colors.red.shade200, size: 30),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.orange.shade100,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Icon(Icons.more_time_sharp,
                                    color: Colors.red.shade200, size: 30),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5, left: 20),
                      child: Text('Flash Deal'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 5),
                      child: Text('Bill'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35, top: 5),
                      child: Text('Game'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5),
                      child: Text('Daily Gift'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text('More'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: Text('Special for you',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30, top: 30),
                          child: Text('See more',
                              style: TextStyle(fontWeight: FontWeight.w200)),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: Dataspecial.map((e) => special(image:e['image'],nom: e['nom'],title: e['title']),).toList(),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 30),
                          child: Text('Popular Products',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30, top: 30),
                          child: Text('See more',
                              style: TextStyle(fontWeight: FontWeight.w200)),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: Dataproduct.map((e) =>produit(detailImage: e['detailImage'],productimage:e['image'],productname: e['nom'],productprice:e['price'],active:e['active'],icon:Icons.heart_broken),
                          ).toList(),
                        ),
                      ),
                    ),
                    SizedBox(height: 80,)
                  ],
                ),
              ],
            ),
          ),),

          Container(child: pageProduit()),
          Container(child: chat()),
          Container(child:  profile()),
        ],
      ),
      bottomSheet: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(onTap: () {
              setState(() {
                index = 0;
                isClick=!isClick;
              });
            },
                child: Icon(Icons.house_siding, color: isClick?Colors.red:Colors.grey.shade400,)),
            GestureDetector(onTap: () {
              setState(() {
                index = 1;
                isClicked=!isClicked;
              });
              // Navigator.push(context, MaterialPageRoute(builder: (context) => pageProduit(),));
            },
                child: Icon(Icons.heart_broken, color: isClicked?Colors.red:Colors.grey.shade400,)),
            GestureDetector(onTap: () {
              setState(() {
                index = 2;
                isClic=!isClic;
              });
              // Navigator.push(context, MaterialPageRoute(builder: (context) => chat(),));
            },
                child: Icon(Icons.chat_outlined, color: isClic?Colors.red:Colors.grey.shade400)),
            GestureDetector(onTap: () {
              setState(() {
                index = 3;
                isClik=!isClik;
              });
              // Navigator.push(context, MaterialPageRoute(builder: (context) => profile(),));
            },
                child: Icon(Icons.perm_identity, color: isClik?Colors.red:Colors.grey.shade400)),
          ],
        ),
      ),
    );
  }
}
