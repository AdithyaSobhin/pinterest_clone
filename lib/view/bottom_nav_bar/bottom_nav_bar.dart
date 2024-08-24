import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';
import 'package:pinterest_clone/view/home_screen/home_screen.dart';
import 'package:pinterest_clone/view/notification_screen/notification_screen.dart';
import 'package:pinterest_clone/view/profile_screen/profile_screen.dart';
import 'package:pinterest_clone/view/search_screen/search_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  List screenList = [
    HomeScreen(),
    SearchScreen(),
    Container(),
    NotificationScreen(),
    ProfileScreen()
  ];
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: screenList[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab,
        backgroundColor: ColorConstants.mainBlack,
        selectedItemColor: ColorConstants.mainWhite,
        unselectedItemColor: ColorConstants.lightGray,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.sms_rounded,
                size: 30,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              label: "")
        ],
        onTap: (value) {
          if (value == 2) {
            showModalBottomSheet(
              context: context,
              backgroundColor: ColorConstants.mainBlack,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              builder: (context) {
                return Container(
                  height: 200,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close,
                              color: ColorConstants.mainWhite,
                              size: 25,
                            ),
                          ),
                          SizedBox(
                            width: 90,
                          ),
                          Text(
                            "Start creating now",
                            style: TextStyle(
                                color: ColorConstants.mainWhite, fontSize: 20),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: ColorConstants.gray,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Icon(
                                  FontAwesome.thumbtack_solid,
                                  color: ColorConstants.mainWhite,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Pin",
                                style: TextStyle(
                                    color: ColorConstants.mainWhite,
                                    fontSize: 15),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: ColorConstants.gray,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Icon(
                                  FontAwesome.photo_film_solid,
                                  color: ColorConstants.mainWhite,
                                  size: 30,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "collage",
                                style: TextStyle(
                                    color: ColorConstants.mainWhite,
                                    fontSize: 15),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: ColorConstants.gray,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Icon(
                                  Icons.auto_awesome_mosaic,
                                  size: 35,
                                  color: ColorConstants.mainWhite,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Board",
                                style: TextStyle(
                                    color: ColorConstants.mainWhite,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            );
          } else {
            selectedTab = value;
            setState(() {});
          }
        },
      ),
    );
  }
}
