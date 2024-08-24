import 'package:flutter/material.dart';
import 'package:pinterest_clone/dummy_db.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';

class UpdatesTab extends StatelessWidget {
  const UpdatesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 100,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://images.pexels.com/photos/4442027/pexels-photo-4442027.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Pins inspired by you",
                      style: TextStyle(
                        color: ColorConstants.mainWhite,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "1h",
                    style: TextStyle(color: ColorConstants.mainWhite),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Seen",
              style: TextStyle(
                color: ColorConstants.mainWhite,
                fontSize: 25,
              ),
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 100,
                        width: 60,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                DummyDb.updatesTabList[index]["url"]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        DummyDb.updatesTabList[index]["des"],
                        style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      DummyDb.updatesTabList[index]["time"],
                      style: TextStyle(color: ColorConstants.mainWhite),
                    )
                  ],
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                height: 20,
              ),
              itemCount: DummyDb.updatesTabList.length,
            ),
          ],
        ),
      ),
    );
  }
}
