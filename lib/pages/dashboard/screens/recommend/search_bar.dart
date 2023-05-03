import 'package:flutter/material.dart';
import 'package:otaku/constants/constants.dart';
import 'package:otaku/pages/dashboard/screens/recommend/on_recommendation.dart';

Widget TopBarBrowse(context) {
  final controller = TextEditingController();
  FocusNode _focusNode = FocusNode();
  return Padding(
    padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            width: 305,
            child: TextField(
              autofocus: false,
              focusNode: _focusNode,
              // textAlign: TextAlign.start,
              controller: controller,
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF2F2F2),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
                hintText: "Get Recommendation",
                hintStyle:
                    TextStyle(fontFamily: semibold, color: Colors.black26),
                // prefixIcon: Icon(Icons.search, color: red, size: 25),
                // prefixIconColor: red,
              ),
              onTap: () {
                FocusScope.of(context).requestFocus(_focusNode);
              },
            ),
          ),
        ),
        // Image(image: AssetImage(Icons.search), height: 18)
        IconButton(
          onPressed: () {
            print("find recommendations for ${controller.text}");
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => OnRecommendation(
                  animeName: controller.text,
                ),
              ),
            );
          },
          icon: Icon(Icons.search),
        ),
      ],
    ),
  );
}
