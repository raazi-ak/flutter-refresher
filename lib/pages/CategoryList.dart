import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

ListView CategoryItem(List<CategoryModel> category) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: category.length,
    itemBuilder: (context, index) => Container(
        margin: EdgeInsets.only(top: 20, bottom: 20, left: 20),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: category[index].contColor,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  spreadRadius: -0.5,
                  color: Colors.black.withOpacity(0.1))
            ],
            borderRadius: BorderRadius.circular(20)),
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
            const SizedBox(
              height: 10,
            ),
            Text(
              category[index].categoryName,
              style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500)),
            )
          ],
        )),
  );
}

ListView DietItem(List<DietModel> diet) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: diet.length,
    itemBuilder: (context, index) => Container(
        margin: EdgeInsets.only(top: 20, bottom: 20, right: 20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: diet[index].contColor,
            boxShadow: [
              BoxShadow(
                  blurRadius: 10,
                  spreadRadius: -0.5,
                  color: Colors.black.withOpacity(0.1))
            ],
            borderRadius: BorderRadius.circular(20)),
        height: 150,
        width: 300,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SvgPicture.network(
                diet[index].svgUrl,
                placeholderBuilder: (BuildContext context) => Container(
                  padding: const EdgeInsets.all(20.0),
                  child: const CircularProgressIndicator(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              diet[index].dietName,
              style: GoogleFonts.poppins(
                  textStyle:
                      TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500)),
            )
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
      required this.svgUrl});
  final String dietName;
  final String dietDescription;
  final Color contColor;
  final String svgUrl;
}
