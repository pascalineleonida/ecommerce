import 'package:flutter/material.dart';

import 'MessageriePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: false,
      ),
      home: chat(),
    );
  }
}

List data = [
  {
    'nom':'leonie',
    'image':'images/ee.jpg',
    'heure':'14.40',
    'icon': Icons.check,
  },

  {
    'nom':'brayan',
    'image':'images/ee.jpg',
    'heure':'15.10',
    'icon': Icons.check,
  },

  {
    'nom':'pascaline',
    'image':'images/ee.jpg',
    'heure':DateTime.now().hour.toString()+'.'+DateTime.now().minute.toString(),
    'icon': Icons.check,
  },

  {
    'nom':'princesse',
    'image':'images/ee.jpg',
    'heure':'12.30',
    'icon': Icons.check,
  },
  {
    'nom':'Elisabeth',
    'image':'images/ee.jpg',
    'heure':'12.30',
    'icon': Icons.check,
  },

];

class chat extends StatefulWidget {
  const chat({super.key});

  @override
  State<chat> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Messagerie'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                height: 500,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: data.map((e) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => messagerie(e: e,)));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(backgroundImage: AssetImage(e['image'])),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(e['nom']),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(e['heure']),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(e['icon']),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )).toList(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
