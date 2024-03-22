import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

ListView CategoryItem(List<CategoryModel> category) {
  return ListView.separated(
    physics: BouncingScrollPhysics(),
    padding: EdgeInsets.symmetric(horizontal: 20),
    scrollDirection: Axis.horizontal,
    itemCount: category.length,
    separatorBuilder: (context, index) => SizedBox(width: 20),
    itemBuilder: (context, index) => Container(
      margin: EdgeInsets.only(
        top: 20,
        bottom: 20,
      ),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: category[index].contColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: -0.5,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: 100,
              height: 200,
              child: SvgPicture.network(
                category[index].svgUrl,
                placeholderBuilder: (BuildContext context) => Container(
                  padding: const EdgeInsets.all(20.0),
                  child: const CircularProgressIndicator(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            category[index].categoryName,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

ListView DietItem(List<DietModel> diet) {
  return ListView.separated(
    physics: BouncingScrollPhysics(),
    padding: EdgeInsets.symmetric(horizontal: 20),
    separatorBuilder: (context, index) => SizedBox(
      width: 20,
    ),
    scrollDirection: Axis.horizontal,
    itemCount: diet.length,
    itemBuilder: (context, index) => Container(
        margin: EdgeInsets.only(
          top: 20,
          bottom: 30,
        ),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: diet[index].contColor,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  spreadRadius: -0.5,
                  color: Colors.black.withOpacity(0.1))
            ],
            borderRadius: BorderRadius.circular(20)),
        height: 200,
        width: 250,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(30),
                child: SvgPicture.network(
                  diet[index].svgUrl,
                  placeholderBuilder: (BuildContext context) => Container(
                    padding: const EdgeInsets.all(20.0),
                    child: const CircularProgressIndicator(),
                  ),
                ),
              ),
            ),
            Text(
              diet[index].dietName,
              style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500)),
            ),
            Text(
              diet[index].dietDescription,
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54)),
            ),
            Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.black),
              height: 45,
              width: 120,
              child: Center(
                child: Text(
                  "View",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        )),
  );
}

class CategoryModel {
  CategoryModel(
      {required this.categoryName,
      required this.svgUrl,
      required this.contColor});

  final String svgUrl;
  final Color contColor;
  final String categoryName;
}

class DietModel {
  DietModel(
      {required this.dietDescription,
      required this.dietName,
      required this.contColor,
      required this.svgUrl})
      : isSelected = false;
  final String dietName;
  final String dietDescription;
  final Color contColor;
  final String svgUrl;
  bool isSelected;
}
