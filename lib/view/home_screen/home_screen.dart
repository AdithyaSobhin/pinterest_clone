import 'package:flutter/material.dart';
import 'package:pinterest_clone/dummy_db.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: ColorConstants.mainBlack,
        appBar: AppBar(
          backgroundColor: ColorConstants.mainBlack,
          bottom: TabBar(
              indicatorColor: ColorConstants.mainWhite,
              labelColor: ColorConstants.mainWhite,
              tabs: [
                Tab(
                  text: "All",
                )
              ]),
        ),
        body: TabBarView(
          children: [
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.7),
                itemCount: DummyDb.imageCardList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(4),
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            //to add radius for the image
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.network(
                              DummyDb.imageCardList[index]["url"],
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              DummyDb.imageCardList[index]["des"],
                              style: TextStyle(color: ColorConstants.mainWhite),
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: ColorConstants.mainWhite,
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
