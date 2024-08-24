import 'package:flutter/material.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';
import 'package:pinterest_clone/view/global_widgets/gridImage.dart';

class ViewProfileScreen extends StatefulWidget {
  const ViewProfileScreen({super.key});

  @override
  State<ViewProfileScreen> createState() => _ViewProfileScreenState();
}

class _ViewProfileScreenState extends State<ViewProfileScreen> {
  double itemWidth = 220;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorConstants.mainBlack,
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.keyboard_arrow_left,
                color: ColorConstants.mainWhite,
                size: 30,
              ),
            ),
            actions: [
              Icon(
                Icons.upload,
                color: ColorConstants.mainWhite,
                size: 25,
              )
            ],
          ),
          backgroundColor: ColorConstants.mainBlack,
          body: Center(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: ColorConstants.gray,
                  radius: 50,
                  child: Text(
                    "A",
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Angel",
                    style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
                Text("angel_sam",
                    style: TextStyle(
                        color: ColorConstants.lightGray, fontSize: 18)),
                SizedBox(
                  height: 10,
                ),
                Text("100 followers - 50 following",
                    style: TextStyle(
                        color: ColorConstants.mainWhite, fontSize: 15)),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 50,
                    width: 110,
                    decoration: BoxDecoration(
                        color: ColorConstants.gray,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      "Edit profile",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 15),
                    ))),
                SizedBox(
                  height: 20,
                ),
                TabBar(
                  indicatorColor: ColorConstants.mainWhite,
                  labelColor: ColorConstants.mainWhite,
                  unselectedLabelColor: ColorConstants.lightGray,
                  tabs: [
                    Tab(text: "Created"),
                    Tab(text: "Saved"),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Center(
                          child: SingleChildScrollView(
                              child: GridImage(itemWidth: itemWidth))),
                      Center(
                          child: Text("Saved content",
                              style:
                                  TextStyle(color: ColorConstants.mainWhite))),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
