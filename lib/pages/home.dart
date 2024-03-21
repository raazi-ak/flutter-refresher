import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppHeader(),
      body: Column(
        children: [
          Container(
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
                    textStyle: TextStyle(
                        // Add your desired styling properties here
                        fontSize: 16,
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
                            padding:
                                const EdgeInsets.only(bottom: 8.0, top: 8.0),
                            child: Container(
                              clipBehavior: Clip.hardEdge,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(300)),
                              child: VerticalDivider(
                                color: Colors.black.withOpacity(0.15),
                                thickness: 1.3,
                                key: key,
                              ),
                            ),
                          ),
                          Icon(
                            Icons.filter_list_rounded,
                            size: 30.0,
                            color: Colors.black.withOpacity(0.6),
                          ),
                          SizedBox(width: 10.0)
                        ],
                      ),
                    ),
                  ),
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.all(15)),
            ),
          ),
        ],
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
