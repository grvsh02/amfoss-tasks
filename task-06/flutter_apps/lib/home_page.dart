import 'package:flutter/material.dart';
import 'package:flutter_apps/main.dart';
import 'package:flutter_apps/onboarding_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(213, 201, 198 ,1),
          title: Text("Welcome"),
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => goToOnBoarding(context),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image(image: AssetImage('assets/welcome.png'),),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Gaurav Sharma',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'An ethusiast developer, learning and evolving every moment.',
                    style: TextStyle(fontSize: 20,),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      );

  void goToOnBoarding(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingPage()),
      );
}
