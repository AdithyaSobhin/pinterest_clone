import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: MasonryGridView.count(
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
                                    imageUrl: DummyDb.imageCardList[index]
                                        ["url"],
                                    description: DummyDb.imageCardList[index]
                                        ["des"],
                                  ),
                                ));
                          },
                          child: Container(
                            width: itemWidth,
                            height: (randomHieght % 4 + 1) * 100,
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
                            Icon(
                              Icons.more_horiz,
                              color: ColorConstants.mainWhite,
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
