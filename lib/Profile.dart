import 'package:flutter/material.dart';
class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Text('profile',style: TextStyle(fontSize: 15),)
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20,top: 30),
                child: CircleAvatar(
                  maxRadius: 60,
                  child: Column(
                    children: [
                      Image(image: AssetImage('images/ee.jpg')),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100,),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.grey.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.camera_alt_outlined,color: Colors.grey.shade400,)
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 20),
            child: Container(
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.person_outline,color: Colors.deepOrange.shade300),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('My Account',style: TextStyle(color: Colors.deepOrange.shade300)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Icon(Icons.navigate_next,color: Colors.deepOrange.shade300),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 20),
            child: Container(
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.notifications_none,color: Colors.deepOrange.shade300),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Notifications',style: TextStyle(color: Colors.deepOrange.shade300)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Icon(Icons.navigate_next,color: Colors.deepOrange.shade300),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 20),
            child: Container(
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.settings_suggest_outlined,color: Colors.deepOrange.shade300),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Settings',style: TextStyle(color: Colors.deepOrange.shade300)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Icon(Icons.navigate_next,color: Colors.deepOrange.shade300),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 20),
            child: Container(
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.help_outline,color: Colors.deepOrange.shade300),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Help Center',style: TextStyle(color: Colors.deepOrange.shade300)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Icon(Icons.navigate_next,color: Colors.deepOrange.shade300),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30,left: 20),
            child: Container(
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(Icons.logout_outlined,color: Colors.deepOrange.shade300),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text('Log Out',style: TextStyle(color: Colors.deepOrange.shade300)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 150),
                    child: Icon(Icons.navigate_next,color: Colors.deepOrange.shade300),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
