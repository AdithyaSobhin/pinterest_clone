import 'package:flutter/material.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';

class TermasAndPrivacy extends StatelessWidget {
  const TermasAndPrivacy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainWhite,
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Text(
          "Terms &Service and Privacy Policy",
          style: TextStyle(color: ColorConstants.mainRed, fontSize: 30),
        ),
      ),
    );
  }
}
