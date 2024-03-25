import 'package:flutter/material.dart';
import 'package:meetown/view/Auth/LoginView.dart';
import 'package:meetown/view/Auth/auth_view.dart';
import 'package:meetown/view/app_intro_view/app_intro_view.dart';

class SplashController extends ChangeNotifier {
  late bool intro = false;

  splashService(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      if (intro) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AuthView()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => AppIntroView()));
      }
    });
  }
}
