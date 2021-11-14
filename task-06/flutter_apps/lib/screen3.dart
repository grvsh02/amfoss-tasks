import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(213, 201, 198 ,1),
        body: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(10, 200, 10, 0),
                child: Image(
                    image:AssetImage('assets/page3.png')
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(40, 40, 10, 0),
              child : Text("Yoga surge",
                style:TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(40, 30, 10, 0),
                child : Text("Welcome to the yoga world !",
                    style:TextStyle(
                      fontSize: 17.0,
                      letterSpacing: 2.0,
                    )
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(40, 20, 10, 0),
                child : Text("Inhale the future,exhale the past",
                    style:TextStyle(
                      fontSize: 17.0,
                      letterSpacing: 2.0,
                    )
                )
            )
          ],
        ),
      ),
    );
  }
}


