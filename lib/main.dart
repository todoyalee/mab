import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'package:mab/views/sign_in.dart';

void main() {
  runApp(dali());
}

class dali extends StatefulWidget {
  const dali({super.key});

  @override
  State<dali> createState() => _daliState();
}

class _daliState extends State<dali> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: SingleChildScrollView(
      child: Container(
          child: Column(
        children: [
          Container(
              child: Stack(
            children: [
              Positioned(
                  child: FadeInUp(
                duration: Duration(seconds: 1),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/back.png"))),
                ),
              )),
              Positioned(
                  child: FadeInUp(
                child: Container(),
                duration: Duration(seconds: 2),
              )),
              Positioned(
                child: FadeInUp(
                  child: Container(),
                  duration: Duration(seconds: 1),
                ),
              ),
              Positioned(
                  child: FadeInUp(
                      duration: Duration(seconds: 1),
                      child: Container(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )))
            ],
          )),
          Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: [
                FadeInUp(
                  duration: Duration(seconds: 1),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.purple,
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "email",
                              hintStyle: TextStyle(color: Colors.grey[700]),
                              prefixIcon:
                                  Icon(Icons.email, color: Colors.amber),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "password",
                                hintStyle: TextStyle(color: Colors.grey[800]),
                                prefix:
                                    Icon(Icons.password, color: Colors.amber)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                FadeInUp(
                  duration: Duration(seconds: 1),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    )));
  }
}
