import 'package:flutter/material.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';
import 'package:pinterest_clone/utilis/image_constants.dart';
import 'package:pinterest_clone/view/welcome_to_pinterest/welcome_to_pinterest.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => WelcomeToPinterest(),
          ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Center(
        child: Image.asset(
          ImageConstants.LOGO,
          height: 90,
          width: 90,
        ),
      ),
    );
  }
}
