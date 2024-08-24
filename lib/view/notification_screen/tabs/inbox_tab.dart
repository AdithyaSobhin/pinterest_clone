import 'package:flutter/material.dart';
import 'package:pinterest_clone/dummy_db.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';

class InboxTab extends StatelessWidget {
  const InboxTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: ColorConstants.mainRed,
                  child: Icon(
                    Icons.edit_document,
                    color: ColorConstants.mainWhite,
                    size: 30,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  "New message",
                  style: TextStyle(
                    color: ColorConstants.mainWhite,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            Text(
              "Messages",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      DummyDb.inboxTabMsgList[index]["url"],
                    ),
                    radius: 25,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DummyDb.inboxTabMsgList[index]["name"],
                          style: TextStyle(
                            color: ColorConstants.mainWhite,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          DummyDb.inboxTabMsgList[index]["des"],
                          style: TextStyle(
                            color: ColorConstants.lightGray,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    DummyDb.inboxTabMsgList[index]["time"],
                    style: TextStyle(
                      color: ColorConstants.lightGray,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: DummyDb.inboxTabMsgList.length,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Contacts",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      DummyDb.inboxTabContactList[index]["url"],
                    ),
                    radius: 25,
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DummyDb.inboxTabContactList[index]["name"],
                          style: TextStyle(
                            color: ColorConstants.mainWhite,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        DummyDb.inboxTabContactList[index]["icon"],
                        color: ColorConstants.mainWhite,
                      )
                    ],
                  )
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemCount: DummyDb.inboxTabContactList.length,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: ColorConstants.gray,
                  radius: 28,
                  child: Icon(
                    Icons.person_add,
                    color: ColorConstants.mainWhite,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Invite your friends",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "Connect to start chatting",
                      style: TextStyle(
                          color: ColorConstants.mainWhite, fontSize: 16),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
