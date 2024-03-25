import 'package:flutter/material.dart';
import 'package:meetown/modelView/Services/splash_controller.dart';
import 'package:provider/provider.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<SplashController>(context, listen: false)
        .splashService(context);
    return Scaffold(
      body: Center(
        child: Image.asset('asset/image/page1.jpeg'),
      ),
    );
  }
}
