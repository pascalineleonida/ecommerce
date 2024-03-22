import 'package:ecommerce/pageRegister.dart';
import 'package:flutter/material.dart';

import 'LoginSuccess.dart';
import 'component/Button.dart';
import 'component/ComposantSing.dart';

 bool isColored = true;

class connexion extends StatefulWidget {
  const connexion({super.key});

  @override
  State<connexion> createState() => _connexionState();
}

class _connexionState extends State<connexion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sing In', style: TextStyle(fontSize: 15)),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, top: 20),
                child: Text('Welcome Back',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(
                    'Sing in with your email and password \n or continue with social media'),
              ),
              GestureDetector(onTap: () {

              },
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Texfield(
                      hintText: 'Enter your email', Icon: Icon(Icons.email_outlined)),
                ),
              ),
              GestureDetector(onTap: () {

              },
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Texfield(
                      hintText: 'Enter your password', Icon: Icon(Icons.lock_outline_sharp)),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(onTap: () {
                    setState(() {

                    });
                  },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 25),
                      child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 2)),
                            child: Column(
                              children: [
                                GestureDetector(onTap: () {
                                  setState(() {

                                  });
                                },
                                    child: Icon(Icons.check,size: 15, )),
                              ],
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50, top: 30),
                    child: Text('Remember me'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, top: 30),
                    child: Text('Forgot Password'),
                  ),
                ],
              ),
              Container(
                child: Column(
                  children: [
                    GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginSucess(),));

                    },
                        child: Button(Title: 'Continue', color: Colors.deepOrange)),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              minRadius: 15,
                              backgroundImage: AssetImage('images/google.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              minRadius: 15,
                              backgroundImage: AssetImage('images/facebook.png'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              minRadius: 15,
                              backgroundImage: AssetImage('images/twitter.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text('Dont have an account?', style: TextStyle(fontSize: 15)),
                    ),
                    GestureDetector(onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));
                    },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Sing Up', style: TextStyle(fontSize: 15,color: Colors.red)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
