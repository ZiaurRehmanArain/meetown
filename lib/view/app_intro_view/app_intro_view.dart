import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:meetown/view/Auth/auth_view.dart';

class AppIntroView extends StatelessWidget {
  AppIntroView({super.key});
  final List<PageViewModel> pages = [
    PageViewModel(
      title: "Travelling app",
      body:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
      image: Image.asset('asset/image/page1.jpeg'),
    ),
    PageViewModel(
      title: "Travelling app",
      body:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      image: Image.asset('asset/image/page2.jpeg'),
    ),
    PageViewModel(
      title: "Travelling app",
      body:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      image: Image.asset('asset/image/page3.jpeg'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/image/log-regis-bg.jpg'),
                fit: BoxFit.cover)),
        child: Scaffold(
          body: IntroductionScreen(
            // globalBackgroundColor: Colors.transparent,
            pages: pages,
            onDone: () {
              // Navigate to main screen after intro completion
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (_) => AuthView(),
                ),
              );
            },
            showSkipButton: true,
            skip: Text("Skip"),
            done: Text("Done"),
            next: Icon(Icons.arrow_forward),
            dotsDecorator: DotsDecorator(
              size: Size(10.0, 10.0),
              color: Colors.grey,
              activeSize: Size(22.0, 10.0),
              activeColor: Colors.blue,
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
            ),
          ),
        ));
  }
}
