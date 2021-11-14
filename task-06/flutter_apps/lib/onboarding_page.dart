import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_apps/home_page.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'YOGA SURGE',
              body: 'Welcome to yoga world',
              image: buildImage('assets/page1.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'HEALTHY FREAKS EXCERCISES',
              body: 'Letting go is the hardest asana',
              image: buildImage('assets/page2.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Cycling',
              body: 'You cant always control what goes on outside. But you can always control what goes on inside',
              image: buildImage('assets/page3.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'MEDITATION',
              body: 'The longest journey of any person is the journey inward',
              image: buildImage('assets/page4.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Get Started', style: TextStyle(fontWeight: FontWeight.w600)),
            onDone: () => goToHome(context),
            showSkipButton: true,
            skip: Text('Skip'),
            onSkip: () => goToHome(context),
          //next: Icon(Icons.arrow_forward),
            dotsDecorator: getDotDecoration(),
        onChange: (index) => print('Page $index selected'),
        skipFlex: 0,
        nextFlex: 0,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => HomePage()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color.fromRGBO(158, 150, 148, 1),
        size: Size(10, 10),
        activeSize: Size(20, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 17),
        descriptionPadding: EdgeInsets.all(15).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(25),
        pageColor: Color.fromRGBO(213, 201, 198 ,1),
      );
}
