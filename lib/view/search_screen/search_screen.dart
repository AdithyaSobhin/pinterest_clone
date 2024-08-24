import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pinterest_clone/dummy_db.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SearchScreen extends StatefulWidget {
  SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int activeindex = 0;

  final urlImages = [
    "https://images.pexels.com/photos/2379179/pexels-photo-2379179.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/1161372/pexels-photo-1161372.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/1721932/pexels-photo-1721932.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/1761279/pexels-photo-1761279.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/913136/pexels-photo-913136.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/2189700/pexels-photo-2189700.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ];

  final List<String> texts = [
    "make it pretty\nDo up your tray like this",
    "All your vibe\nPick your on vibe",
    "Hair style\nThis is your hair style",
    "get creative\nThe coolest photo doodles",
    "Drawings\nvisualize the drawings",
    "Motivating words\nback to quotes and wallpapers",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      body: Expanded(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  //#1 top section
                  _topCarouselImageSection(),
                  const SizedBox(
                    height: 20,
                  ),
                  AnimatedSmoothIndicator(
                    activeIndex: activeindex,
                    count: urlImages.length,
                    effect: SwapEffect(
                        dotWidth: 10,
                        dotHeight: 10,
                        activeDotColor: ColorConstants.mainWhite),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Ideas from Creators",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.mainWhite),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  //#2 middle section
                  _ideasFromCreatorSection(),

                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Ideas for you",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: ColorConstants.mainWhite),
                  ),

                  //#3 ideas for you section

                  _ideasForYouSection(),
                  SizedBox(
                    height: 10,
                  ),

                  Text(
                    "Popular on Pinterest",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.mainWhite),
                  ),

                  //#4 last 6 grid

                  _popularOnPinterestSection()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _popularOnPinterestSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        height: 318,
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: urlImages.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 6,
              mainAxisSpacing: 6,
              mainAxisExtent: 100),
          itemBuilder: (context, index) => Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                urlImages[index].toString(),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Stack _topCarouselImageSection() {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 400,
            viewportFraction: 1,
            autoPlay: true,
            reverse: true,
            autoPlayInterval: Duration(seconds: 2),
            onPageChanged: (index, reason) {
              setState(() {
                activeindex = index;
              });
            },
          ),
          itemCount: urlImages.length,
          itemBuilder: (context, index, realIndex) {
            final urlImage = urlImages[index];

            return Stack(
              children: [
                Container(
                  //margin: EdgeInsets.symmetric(horizontal: 8),
                  color: Colors.grey,
                  width: double.infinity,

                  child: Image.network(
                    urlImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.network(
                    urlImage,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            );
          },
        ),
        //search field
        Positioned(
          top: 50,
          left: 20,
          right: 20,
          child: Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for ideas",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.camera_alt),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              ),
            ),
          ),
        ),
        Positioned(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: texts[activeindex].split('\n')[0] + "\n",
                  style: TextStyle(
                    fontSize: 15,
                    color: ColorConstants.gray, // First line in grey
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: texts[activeindex].split('\n')[1],
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white, // Second line in white
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ideasForYouSection extends StatelessWidget {
  const _ideasForYouSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(
                    "https://images.pexels.com/photos/1161372/pexels-photo-1161372.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            width: 6,
          ),
          Container(
            height: 100,
            width: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(
                    "https://images.pexels.com/photos/1721932/pexels-photo-1721932.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class _ideasFromCreatorSection extends StatelessWidget {
  const _ideasFromCreatorSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 150,
        width: double.infinity,
        //color: Colors.green,
        child: ListView.separated(
          itemCount: 3,
          itemBuilder: (context, index) => Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 140,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            DummyDb.threeContainer[index]["container"]))),
              ),
              Positioned(
                bottom: 0,
                right: 25,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                  radius: 23,
                ),
              )
            ],
          ),
          separatorBuilder: (context, index) => SizedBox(
            width: 10,
          ),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
        ),
      ),
    );
  }
}
