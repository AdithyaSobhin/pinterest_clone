import 'package:flutter/material.dart';
import 'package:pinterest_clone/dummy_db.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';
import 'package:pinterest_clone/view/bottom_nav_bar/bottom_nav_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool _isFormValid = false;

  void _validateForm() {
    setState(() {
      _isFormValid =
          emailController.text.contains("@") && passController.text.length >= 6;
    });
  }

  @override
  void initState() {
    super.initState();
    emailController.addListener(_validateForm);
    passController.addListener(_validateForm);
  }

  @override
  void dispose() {
    emailController.removeListener(_validateForm);
    passController.removeListener(_validateForm);
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.close,
            color: ColorConstants.mainWhite,
          ),
        ),
        title: Text(
          "Log in",
          style: TextStyle(color: ColorConstants.mainWhite, fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              //login field
              _loginContainers(),
              SizedBox(
                height: 20,
              ),
              Text(
                "OR",
                style: TextStyle(color: ColorConstants.mainWhite),
              ),

              //email input field

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "Email address",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: emailController,
                    style: TextStyle(color: ColorConstants.mainWhite),
                    cursorColor: ColorConstants.mainRed,
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.mainBlack)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.mainBlack)),
                    ),
                    validator: (value) {
                      if (value != null && value.contains("@")) {
                        return null;
                      } else {
                        return "Hmm...that doesn't look like an email address.";
                      }
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  TextFormField(
                    controller: passController,
                    obscureText: true,
                    cursorColor: ColorConstants.mainRed,
                    style: TextStyle(color: ColorConstants.mainWhite),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility),
                      hintText: "Enter your password",
                      hintStyle: TextStyle(
                          color: Colors.grey.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.mainBlack)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: ColorConstants.mainBlack)),
                    ),
                    validator: (value) {
                      if (value != null && value.length >= 6) {
                        return null;
                      } else {
                        return "Oops! Your password needs 6+ characters.";
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        DummyDb.storedEmail = emailController.text;
                        DummyDb.storedPass = passController.text;

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavBar(),
                            ));
                      }
                    },
                    child: Container(
                      height: 35,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: _isFormValid
                            ? ColorConstants.mainRed
                            : Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Log in",
                        style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Column _loginContainers() {
    return Column(
      children: [
        Center(
          child: Container(
            height: 35,
            decoration: BoxDecoration(
                color: Color(0xff4267B2),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: Text(
                "Continue with Facebook",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            height: 35,
            decoration: BoxDecoration(
                color: Color(0xff1DA1F2),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: Text(
                "Continue with Google",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Container(
            height: 35,
            decoration: BoxDecoration(
                color: Color(0xffffffff),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.apple,
                    color: ColorConstants.mainBlack,
                  ),
                  Text(
                    "Continue with Apple",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstants.mainBlack,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
