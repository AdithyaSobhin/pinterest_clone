import 'package:flutter/material.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';
import 'package:pinterest_clone/view/global_widgets/gridImage.dart';

class SearchDetails extends StatefulWidget {
  const SearchDetails({super.key});

  @override
  State<SearchDetails> createState() => _SearchDetailsState();
}

class _SearchDetailsState extends State<SearchDetails> {
  double itemwidth = 220;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorConstants.mainBlack,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: ColorConstants.mainWhite,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(color: ColorConstants.mainWhite),
                    hintText: "Search for ideas",
                    prefixIcon: Icon(
                      Icons.search,
                      color: ColorConstants.mainWhite,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: ColorConstants.gray,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GridImage(itemWidth: itemwidth)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
