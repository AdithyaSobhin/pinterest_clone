import 'package:flutter/material.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';
import 'package:pinterest_clone/view/profile_screen/tabs/pinsTab.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: ColorConstants.mainBlack,
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: ColorConstants.gray,
                child: Text('A', style: TextStyle(color: Colors.white)),
              ),
            ),
            bottom: TabBar(
              indicatorWeight: 4,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorColor: ColorConstants.mainRed,
              labelColor: ColorConstants.mainWhite,
              unselectedLabelColor: ColorConstants.mainWhite,
              tabs: [
                Tab(text: 'Pins'),
                Tab(text: 'Boards'),
              ],
            ),
          ),
          body: TabBarView(
            children: [Pinstab()],
          ),
        ));
  }
}
