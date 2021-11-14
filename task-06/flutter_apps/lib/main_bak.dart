import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_apps/Screen1.dart';
import 'package:flutter_apps/screen2.dart';
import 'package:flutter_apps/screen3.dart';
import 'package:flutter_apps/screen4.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(
                tabs: [
                  Tab(text: "first",),
                  Tab(text: "Second",),
                  Tab(text: "Third",),
                  Tab(text: "Fourth",)
                ],
              )
            ),
            body: TabBarView(
                children: [
                  FirstScreen(),
                  SecondScreen(),
                  ThirdScreen(),
                  FourthScreen(),

                ]),
          ),
          initialIndex: 0,
      )
    );
  }
}
