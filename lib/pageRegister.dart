import 'package:ecommerce/pageRegister.dart';
import 'package:flutter/material.dart';

import 'component/Button.dart';
import 'component/ComposantSing.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _connexionState();
}

class _connexionState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sing Up', style: TextStyle(fontSize: 15)),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20),
                child: Text('Register Account',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                    'Complete your details or continue'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                    'with social media'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child:
                Texfield(hintText: 'Enter your email', Icon: Icon(Icons.email_outlined)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Texfield(
                    hintText: 'Enter your password', Icon: Icon(Icons.lock_outline)),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Texfield(
                    hintText: 'Re-enter your password', Icon: Icon(Icons.lock_outline)),
              ),
              Container(
                child: Column(
                  children: [
                    Button(Title: 'Continue', color: Colors.deepOrange),
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
                      child: Text('By continuing your confirm that you agree\n with our Term and Conditional', style: TextStyle(fontSize: 15)),
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
