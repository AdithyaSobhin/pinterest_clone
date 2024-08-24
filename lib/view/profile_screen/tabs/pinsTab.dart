import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:pinterest_clone/dummy_db.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';

class Pinstab extends StatefulWidget {
  const Pinstab({super.key});

  @override
  State<Pinstab> createState() => _PinstabState();
}

class _PinstabState extends State<Pinstab> {
  final double itemWidth = 220;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            //#1 search and add section

            _buildSearchAndAddSection(context),
            SizedBox(
              height: 10,
            ),

            //#2 second section containers

            _secondSectionContainers(context),

            SizedBox(
              height: 10,
            ),
            //#3 image view section
            _buildImageViewSection()
          ],
        ),
      ),
    );
  }

  Column _buildImageViewSection() {
    return Column(
      children: [
        MasonryGridView.count(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 3,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          crossAxisCount: 2,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: 200,
                  width: itemWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(DummyDb.pinTabImages[index]["url"]),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      DummyDb.pinTabImages[index]["text"],
                      style: TextStyle(color: ColorConstants.mainWhite),
                    ),
                    Stack(children: [
                      Icon(
                        Icons.star,
                        color: ColorConstants.mainWhite,
                        size: 23,
                      ),
                      Positioned(
                          bottom: 2,
                          right: 2,
                          left: 2,
                          top: 2,
                          child: Icon(
                            Icons.star,
                            color: ColorConstants.mainBlack,
                            size: 18,
                          ))
                    ])
                  ],
                )
              ],
            );
          },
        )
      ],
    );
  }

  Row _secondSectionContainers(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            showModalBottomSheet(
              backgroundColor: const Color.fromARGB(255, 42, 42, 42),
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(30))),
              context: context,
              builder: (context) {
                return Container(
                  height: 300,
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "View Options",
                        style: TextStyle(
                            color: ColorConstants.mainWhite, fontSize: 15),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Wide",
                        style: TextStyle(
                            color: ColorConstants.mainWhite,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Default",
                        style: TextStyle(
                            color: ColorConstants.mainWhite,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Compact",
                        style: TextStyle(
                            color: ColorConstants.mainWhite,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Center(
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 50,
                              width: 80,
                              decoration: BoxDecoration(
                                color: ColorConstants.gray,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text(
                                "Close",
                                style:
                                    TextStyle(color: ColorConstants.mainWhite),
                              )),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          },
          child: Container(
            height: 30,
            width: 50,
            decoration: BoxDecoration(
              color: ColorConstants.gray,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.grid_view_rounded,
                  color: Colors.white,
                  size: 18,
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 30,
          width: 110,
          decoration: BoxDecoration(
              color: ColorConstants.gray,
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.star,
                color: ColorConstants.mainWhite,
                size: 20,
              ),
              Text(
                "Favourites",
                style: TextStyle(color: ColorConstants.mainWhite, fontSize: 13),
              )
            ],
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Container(
          height: 30,
          width: 110,
          decoration: BoxDecoration(
              color: ColorConstants.gray,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              "Created by you",
              style: TextStyle(color: ColorConstants.mainWhite, fontSize: 13),
            ),
          ),
        ),
      ],
    );
  }

  Row _buildSearchAndAddSection(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search your saved ideas",
              hintStyle:
                  TextStyle(color: ColorConstants.lightGray.withOpacity(.5)),
              prefixIcon: Icon(
                Icons.search,
                color: ColorConstants.lightGray.withOpacity(.5),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: const Color.fromARGB(255, 53, 52, 52),
              contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {
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
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 35,
          ),
        )
      ],
    );
  }
}
