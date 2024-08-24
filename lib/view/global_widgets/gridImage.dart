import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:pinterest_clone/dummy_db.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';
import 'package:pinterest_clone/view/home_screen/detailed_imageCard/detailed_imageCard.dart';

class GridImage extends StatelessWidget {
  const GridImage({
    super.key,
    required this.itemWidth,
  });

  final double itemWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MasonryGridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: DummyDb.imageCardList.length,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 2,
            itemBuilder: (context, index) {
              int randomHieght = Random().nextInt(6);
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailedImageCard(
                                imageUrl: DummyDb.imageCardList[index]["url"],
                                description: DummyDb.imageCardList[index]
                                    ["des"],
                              ),
                            ));
                      },
                      child: Container(
                        width: itemWidth,
                        height: (randomHieght % 5 + 1) * 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  DummyDb.imageCardList[index]["url"])),
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
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: ColorConstants.mainBlack,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(30))),
                              builder: (context) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 20),
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.close,
                                              color: ColorConstants.mainWhite,
                                              size: 30,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Share to",
                                              style: TextStyle(
                                                  color:
                                                      ColorConstants.mainWhite,
                                                  fontSize: 18),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        //share options
                                        _shareOptionSection(),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          height: 1,
                                          color: ColorConstants.lightGray
                                              .withOpacity(.5),
                                        ),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        Text(
                                          "Options",
                                          style: TextStyle(
                                              color: ColorConstants.mainWhite,
                                              fontSize: 15),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Hide",
                                          style: TextStyle(
                                              color: ColorConstants.mainWhite,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 28),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          "Report",
                                          style: TextStyle(
                                              color: ColorConstants.mainWhite,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 28),
                                        ),
                                        Spacer(),
                                        Center(
                                          child: GestureDetector(
                                            //to close the bottomsheet
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Container(
                                              height: 45,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                  color: ColorConstants.gray,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: Center(
                                                child: Text(
                                                  "Close",
                                                  style: TextStyle(
                                                      color: ColorConstants
                                                          .mainWhite,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Icon(
                            Icons.more_horiz,
                            color: ColorConstants.mainWhite,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  SingleChildScrollView _shareOptionSection() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: ColorConstants.gray,
            radius: 25,
            child: Icon(
              Icons.search,
              color: ColorConstants.mainWhite,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Brand(
            Brands.whatsapp,
            size: 60,
          ),
          SizedBox(
            width: 15,
          ),
          Brand(
            Brands.instagram,
            size: 60,
          ),
          SizedBox(
            width: 15,
          ),
          Brand(
            Brands.telegram_app,
            size: 60,
          ),
          SizedBox(
            width: 15,
          ),
          Brand(
            Brands.gmail,
            size: 60,
          ),
          SizedBox(
            width: 15,
          ),
          Brand(
            Brands.messages,
            size: 60,
          ),
          SizedBox(
            width: 15,
          ),
          CircleAvatar(
            backgroundColor: ColorConstants.gray,
            radius: 25,
            child: Icon(
              Icons.more_horiz,
              color: ColorConstants.mainWhite,
            ),
          )
        ],
      ),
    );
  }
}
