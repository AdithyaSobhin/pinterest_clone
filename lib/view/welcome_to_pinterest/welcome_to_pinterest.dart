import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:pinterest_clone/utilis/color_constants.dart';
import 'package:pinterest_clone/utilis/image_constants.dart';
import 'package:pinterest_clone/view/login_screen/login_screen.dart';
import 'package:pinterest_clone/view/terms_and_privacy/terms_and_privacy.dart';

class WelcomeToPinterest extends StatelessWidget {
  const WelcomeToPinterest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: 550,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.pexels.com/photos/347735/pexels-photo-347735.jpeg?auto=compress&cs=tinysrgb&w=400"),
                ),
              ),
            ),
            Container(
              height: 550,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment(0.0, 0.15),
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
              )),
            ),
          ]),
          Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                width: double.infinity,
                color: ColorConstants.mainBlack,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Brand(
                      Brands.pinterest,
                      size: 100,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Welcome to Pinterest",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: ColorConstants.mainRed,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: ColorConstants.mainWhite,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            color: ColorConstants.mainBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TermasAndPrivacy(),
                            ));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "By continuing, you agree to pinterest's Terms of Service and",
                            style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontSize: 10,
                            ),
                          ),
                          Text(
                              "acknwoledge that you've read our Privacy Policy. Notice at collection",
                              style: TextStyle(
                                color: ColorConstants.mainWhite,
                                fontSize: 10,
                              ))
                        ],
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
