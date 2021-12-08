import 'package:flutter/material.dart';
import 'package:flutter_practice/this%20months%20challenge/Chair%20Home%20Page/data/chairData.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mdi/mdi.dart';

class ChairHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: buildAppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                height: size.height * 0.325,
                margin: EdgeInsets.only(
                  left: 40.0,
                  right: 40.0,
                  bottom: 40.0,
                  top: 20.0,
                ),
                child: Center(
                  child: Image.asset(
                    'assets/birds.png',
                    fit: BoxFit.cover,
                    alignment: Alignment.centerRight,
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      spreadRadius: 10,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Best Selling'.toUpperCase(),
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                height: size.height * 0.4,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listofchair.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(8.0),
                      width: size.width * 0.5,
                      child: Stack(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                width: size.width * 0.5,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.05),
                                      blurRadius: 10,
                                      spreadRadius: 10,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: size.height * 0.2,
                                      child:
                                          Image.asset(listofchair[index].image),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        listofchair[index].title,
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        listofchair[index].subtitle,
                                        style: TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        "\$" + listofchair[index].price,
                                        style: TextStyle(
                                          fontSize: 24,
                                          color: Color(0xff005dff),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    leading: Icon(
      Mdi.sortVariant,
      color: Colors.black,
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Icon(
          Mdi.textBox,
          color: Colors.black,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Icon(
          Mdi.paperCutVertical,
          color: Colors.black,
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Icon(
          Mdi.searchWeb,
          color: Colors.black,
        ),
      ),
    ],
  );
}
