import 'package:flutter/material.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';
import 'package:pinterest_clone/view/notification_screen/tabs/inbox_tab.dart';
import 'package:pinterest_clone/view/notification_screen/tabs/updates_tab.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: ColorConstants.mainBlack,
        body: SafeArea(
          child: Column(
            children: [
              Divider(
                color: Colors.transparent,
              ),
              TabBar(
                  indicatorWeight: 4,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: ColorConstants.mainRed,
                  labelColor: ColorConstants.mainWhite,
                  unselectedLabelColor: ColorConstants.mainWhite,
                  tabs: [
                    Tab(
                      text: "Updates",
                    ),
                    Tab(
                      text: "Inbox",
                    ),
                  ]),
              Expanded(
                child: TabBarView(children: [UpdatesTab(), InboxTab()]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
