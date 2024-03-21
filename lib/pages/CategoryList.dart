import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

Container CategoryItem(Color contColor, String cateogoryName, String svgUrl) {
  return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      padding: EdgeInsets.all(15),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: contColor,
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                spreadRadius: -0.5,
                color: Colors.black.withOpacity(0.1))
          ],
          borderRadius: BorderRadius.circular(20)),
      height: 130,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: SvgPicture.network(
                svgUrl,
                placeholderBuilder: (BuildContext context) => Container(
                  padding: const EdgeInsets.all(20.0),
                  child: const CircularProgressIndicator(),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            cateogoryName,
            style: GoogleFonts.poppins(
                textStyle:
                    TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500)),
          )
        ],
      ));
}

class Category {
  Category(
      {required this.categoryName,
      required this.svgUrl,
      required this.contColor});

  final String svgUrl;
  final Color contColor;
  final String categoryName;
}


final List<Category>