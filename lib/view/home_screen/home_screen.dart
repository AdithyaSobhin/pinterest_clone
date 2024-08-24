import 'package:flutter/material.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';
import 'package:pinterest_clone/view/global_widgets/gridImage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    double itemWidth = 220;

    // double crossAxisCount = w / (itemWidth);
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: ColorConstants.mainBlack,
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                  indicatorColor: ColorConstants.mainWhite,
                  labelColor: ColorConstants.mainWhite,
                  tabs: [
                    Tab(
                      text: "All",
                    )
                  ]),
              Expanded(
                child: TabBarView(children: [
                  SingleChildScrollView(
                    child: Center(
                      child: GridImage(itemWidth: itemWidth),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
