import 'package:flutter/material.dart';

import 'PageConnexion.dart';
import 'component/Button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List Datastart=[
  {
    'title':'TOKOTO',
    'description':'Welcome to Tokoto, Lets shop!',
    'image':'images/x.jpg',
  },
  {
    'title':'TOKOTO',
    'description':'We help people conect with store \n around United State of America',
    'image':'images/u.jpg',
  },
  {
    'title':'TOKOTO',
    'description':'We show the easy way to shop \n Just stay at home with us',
    'image':'images/y.jpg',
  },
];

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 900,
          child: PageView(
            children: Datastart.map((e) => Container(
              child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 20),
                       child: Text(e['title'],style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold,fontSize: 30)),
                     ),
                    Text(e['description']),
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Image(image: AssetImage(e['image']),width: 300,height: 300),
                    ),
                  ],
                ),
            )).toList(),
          ),
        ),
        bottomNavigationBar:
        GestureDetector(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => connexion(),));
        },
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30,right: 20),
            child: Button(Title: 'Continue',color: Colors.deepOrange),
          ),
        ),
          // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
