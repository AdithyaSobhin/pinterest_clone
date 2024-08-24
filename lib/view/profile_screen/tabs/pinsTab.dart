import 'package:flutter/material.dart';
import 'package:pinterest_clone/utilis/color_constants.dart';

class Pinstab extends StatelessWidget {
  const Pinstab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search your saved ideas",
                    hintStyle: TextStyle(
                        color: ColorConstants.lightGray.withOpacity(.5)),
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
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.add,
                color: Colors.white,
                size: 35,
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                    color: ColorConstants.gray,
                    borderRadius: BorderRadius.circular(20),
                    ),
                   
              )
            ],
          )
        ],
      ),
    );
  }
}
