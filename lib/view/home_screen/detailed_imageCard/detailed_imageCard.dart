import 'package:flutter/material.dart';
import 'package:pinterest_clone/dummy_db.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';
import 'package:pinterest_clone/view/global_widgets/gridImage.dart';

class DetailedImageCard extends StatefulWidget {
  final String imageUrl;
  final String description;

  const DetailedImageCard({
    Key? key,
    required this.imageUrl,
    required this.description,
  }) : super(key: key);

  @override
  State<DetailedImageCard> createState() => _DetailedImageCardState();
}

class _DetailedImageCardState extends State<DetailedImageCard> {
  @override
  Widget build(BuildContext context) {
    final double itemWidth = 220;
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(widget.imageUrl),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/1055272/pexels-photo-1055272.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                      radius: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Elisa",
                      style: TextStyle(
                          color: ColorConstants.mainWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Spacer(),
                    Container(
                      height: 45,
                      width: 70,
                      decoration: BoxDecoration(
                          color: ColorConstants.gray,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Follow",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.comment_rounded,
                      color: ColorConstants.mainWhite,
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Container(
                      height: 45,
                      width: 70,
                      decoration: BoxDecoration(
                          color: ColorConstants.gray,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "View",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 45,
                      width: 70,
                      decoration: BoxDecoration(
                          color: ColorConstants.mainRed,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Save",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: ColorConstants.mainWhite,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Icon(
                      Icons.upload,
                      color: ColorConstants.mainWhite,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            color: ColorConstants.lightGray.withOpacity(.5),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Text(
              "More to explore",
              style: TextStyle(color: ColorConstants.mainWhite),
            ),
          ),
          GridImage(itemWidth: itemWidth)
        ]),
      ),
    );
  }
}
