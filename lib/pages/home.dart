import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:refresher/pages/categoryList.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<DietModel> dummyDiet = [
    DietModel(
        dietName: 'Cereal Bowl',
        dietDescription: 'Easy|5 min|384 cal',
        svgUrl: "https://www.svgrepo.com/show/269879/cereal-wheat.svg",
        contColor: Color.fromARGB(255, 255, 169, 169)),
    DietModel(
        dietName: 'Honey Pancakes',
        dietDescription: 'Easy|30 minutes|409 cal',
        svgUrl: "https://www.svgrepo.com/show/235459/pancakes.svg",
        contColor: Color.fromARGB(255, 242, 255, 147)),
    DietModel(
        dietName: 'Russian Salad',
        dietDescription: 'Easy|20 minutes|273 cal',
        svgUrl:
            "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Salad-575436.svg/61px-Salad-575436.svg.png?20160610230938",
        contColor: Color.fromARGB(255, 180, 255, 163))
  ];
  final List<CategoryModel> dummyCategory = [
    CategoryModel(
        categoryName: "Muffins",
        svgUrl: "https://www.svgrepo.com/show/152178/muffin.svg",
        contColor: Color.fromRGBO(255, 204, 204, 1)), // Pastel pink
    CategoryModel(
        categoryName: "Pancakes",
        svgUrl: "https://www.svgrepo.com/show/402294/pancakes.svg",
        contColor: Color.fromRGBO(204, 255, 204, 1)), // Pastel green
    CategoryModel(
        categoryName: "Sandwiches",
        svgUrl: "https://www.svgrepo.com/show/407373/sandwich.svg",
        contColor: Color.fromRGBO(204, 204, 255, 1)), // Pastel blue
    CategoryModel(
        categoryName: "Bacon",
        svgUrl: "https://www.svgrepo.com/show/268793/breakfast-bacon.svg",
        contColor: Color.fromRGBO(255, 255, 204, 1)), // Pastel yellow
    CategoryModel(
        categoryName: "Eggs",
        svgUrl: "https://www.svgrepo.com/show/228585/eggs-egg.svg",
        contColor: Color.fromRGBO(255, 204, 255, 1)), // Pastel purple
    CategoryModel(
        categoryName: "Salads",
        svgUrl: "https://www.svgrepo.com/show/235674/fruits-banana.svg",
        contColor: Color.fromRGBO(204, 255, 255, 1)), // Pastel cyan
    CategoryModel(
        categoryName: "Smoothies",
        svgUrl: "https://www.svgrepo.com/show/83163/juice.svg",
        contColor: Color.fromRGBO(255, 255, 204, 1)), // Pastel yellow
    CategoryModel(
        categoryName: "Pizza",
        svgUrl: "https://www.svgrepo.com/show/484414/pizza.svg",
        contColor: Color.fromRGBO(255, 204, 204, 1)), // Pastel pink
    CategoryModel(
        categoryName: "Burgers",
        svgUrl: "https://www.svgrepo.com/show/356623/sandwich-burger.svg",
        contColor: Color.fromRGBO(204, 255, 204, 1)), // Pastel green
    CategoryModel(
        categoryName: "Sushi",
        svgUrl: "https://www.svgrepo.com/show/505198/sushi.svg",
        contColor: Color.fromRGBO(204, 204, 255, 1)), // Pastel blue
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppHeader(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBar(),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Category(),
          ),
          SizedBox(height: 150, child: CategoryItem(dummyCategory)),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Diet Recommendations",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  )),
                ),
                Text(
                  "For You",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 300,
            child: DietItem(dummyDiet),
          )
        ],
      ),
    );
  }

  Column Category() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Category",
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600)),
        ),
        // Container(
        //     margin: EdgeInsets.only(top: 20, bottom: 20),
        //     padding: EdgeInsets.all(15),
        //     clipBehavior: Clip.hardEdge,
        //     decoration: BoxDecoration(
        //         color: category[0].contColor,
        //         boxShadow: [
        //           BoxShadow(
        //               blurRadius: 10,
        //               spreadRadius: -0.5,
        //               color: Colors.black.withOpacity(0.1))
        //         ],
        //         borderRadius: BorderRadius.circular(20)),
        //     height: 130,
        //     width: 100,
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       crossAxisAlignment: CrossAxisAlignment.center,
        //       children: [
        //         Expanded(
        //           child: Padding(
        //             padding: const EdgeInsets.all(4.0),
        //             child: SvgPicture.network(
        //               category[0].svgUrl,
        //               placeholderBuilder: (BuildContext context) => Container(
        //                 padding: const EdgeInsets.all(20.0),
        //                 child: const CircularProgressIndicator(),
        //               ),
        //             ),
        //           ),
        //         ),
        //         const SizedBox(
        //           height: 10,
        //         ),
        //         Text(
        //           category[0].categoryName,
        //           style: GoogleFonts.poppins(
        //               textStyle: TextStyle(
        //                   fontSize: 14.0, fontWeight: FontWeight.w500)),
        //         )
        //       ],
        //     ))
      ],
    );
  }

  Container SearchBar() {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff1D1617).withOpacity(0.11),
            blurRadius: 50,
            spreadRadius: 0.5,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none),
            filled: true,
            hintText: "Search",
            hintStyle: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  // Add your desired styling properties here
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.black45,
                  height: 0.001),
            ),
            prefixIcon: Icon(
              Icons.search_rounded,
              size: 30.0,
              color: Colors.black.withOpacity(0.6),
            ),
            suffixIcon: Container(
              width: 100,
              child: IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(300)),
                        child: VerticalDivider(
                          color: Colors.black.withOpacity(0.15),
                          thickness: 1.3,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.filter_list_rounded,
                      size: 30.0,
                      color: Colors.black.withOpacity(0.6),
                    ),
                    const SizedBox(width: 10.0)
                  ],
                ),
              ),
            ),
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.all(15)),
      ),
    );
  }

  AppBar AppHeader() {
    return AppBar(
      title: Text(
        "Breakfast",
        style: GoogleFonts.poppins(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: GestureDetector(
        onTap: () {},
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 229, 231, 231),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(Icons.chevron_left_rounded),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            width: 37,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 229, 231, 231),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(Icons.menu),
          ),
        ),
      ],
    );
  }
}
