import 'package:flutter/material.dart';
class autre extends StatelessWidget {
  String?title;
  String?nom;
  String?detailtitle;
  IconData? icon;
  IconData? iconcircle;
  IconData? iconmore;
  IconData? iconremove;
  IconData? iconadd;


   autre({super.key,this.title,this.icon,this.detailtitle,this.nom,this.iconadd,this.iconcircle,this.iconremove,this.iconmore});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30,right: 70),
                  child: Text(title.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 310),
                  child: Container(
                      width: 80,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.red.shade100,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Icon(icon,color: Colors.red,),
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 90),
                  child: Text(detailtitle.toString()),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20,top: 10),
                  child: Row(
                    children: [
                      Text(nom.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.red)),
                      Icon(iconmore,color: Colors.red,),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    width: 350,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          CircleAvatar(backgroundColor: Colors.red,minRadius: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: CircleAvatar(backgroundColor: Colors.deepPurple,minRadius: 10),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: CircleAvatar(backgroundColor: Colors.lime.shade800,minRadius: 10),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: CircleAvatar(backgroundColor: Colors.red,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(iconcircle,color: Colors.grey,size: 40),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80),
                            child: CircleAvatar(backgroundColor: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(iconremove,color: Colors.red,),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: CircleAvatar(backgroundColor: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(iconadd,color: Colors.red,)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
