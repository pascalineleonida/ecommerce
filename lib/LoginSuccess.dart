import 'package:flutter/material.dart';
import 'ProductPage.dart';
import 'component/Button.dart';
class LoginSucess extends StatefulWidget {
  const LoginSucess({super.key});

  @override
  State<LoginSucess> createState() => _LoginSucessState();
}

class _LoginSucessState extends State<LoginSucess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Success', style: TextStyle(fontSize: 15)),
      ),
      body: Container(
        width: 400,
        height: 600,
        child: Column(
          children: [
            Image(image: AssetImage('images/aa.jpg')),
            GestureDetector(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => product(),));
            },
              child: Padding(
                padding: const EdgeInsets.only(top: 150,right: 30),
                child: Button(Title: 'Back to home', color: Colors.deepOrange),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
