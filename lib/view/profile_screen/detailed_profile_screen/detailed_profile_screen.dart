import 'package:flutter/material.dart';
import 'package:pinterest_clone/dummy_db.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';
import 'package:pinterest_clone/view/profile_screen/view_profile_screen/view_profile_screen.dart';

class DetailedProfileScreen extends StatelessWidget {
  const DetailedProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        leading: Icon(
          Icons.arrow_back,
          color: ColorConstants.mainWhite,
        ),
        centerTitle: true,
        title: Text(
          "Your account",
          style: TextStyle(
              color: ColorConstants.mainWhite,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //#1 top section

              _buildTopSection(context),

              SizedBox(
                height: 20,
              ),
              Text(
                "Settings",
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //#2 setting section

              _buildSettingsSection(),
              SizedBox(
                height: 40,
              ),
              Text(
                "Login",
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //#3 login section

              _buildLoginSection(),
              SizedBox(
                height: 40,
              ),
              Text(
                "Support",
                style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //#4support Section

              _buildSupportSection(),
            ],
          ),
        ),
      ),
    );
  }

  ListView _buildSupportSection() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: DummyDb.supportList.length,
      itemBuilder: (context, index) => Column(
        children: [
          Row(
            children: [
              Text(
                DummyDb.supportList[index]["text"],
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Spacer(),
              Icon(
                Icons.north_east,
                color: ColorConstants.mainWhite,
                size: 30,
              )
            ],
          )
        ],
      ),
    );
  }

  ListView _buildLoginSection() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: DummyDb.loginList.length,
      itemBuilder: (context, index) => Column(
        children: [
          Row(
            children: [
              Text(
                DummyDb.loginList[index]["text"],
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Spacer(),
              Icon(
                Icons.chevron_right,
                color: ColorConstants.mainWhite,
                size: 37,
              )
            ],
          )
        ],
      ),
    );
  }

  ListView _buildSettingsSection() {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: DummyDb.settingsList.length,
      itemBuilder: (context, index) => Column(
        children: [
          Row(
            children: [
              Text(
                DummyDb.settingsList[index]["text"],
                style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Spacer(),
              Icon(
                Icons.chevron_right,
                color: ColorConstants.mainWhite,
                size: 37,
              )
            ],
          )
        ],
      ),
    );
  }

  Row _buildTopSection(context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: ColorConstants.gray,
          child: Text(
            "A",
            style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Angel ",
              style: TextStyle(
                  color: ColorConstants.mainWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "View profile ",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Spacer(),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ViewProfileScreen(),
                ));
          },
          child: Icon(
            Icons.chevron_right,
            color: ColorConstants.mainWhite,
            size: 37,
          ),
        )
      ],
    );
  }
}
