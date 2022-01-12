// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
                color: Color(0xff1D1E3C),
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: index == selectedIndex
                    ? Color(0xffFE998D)
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Image.asset(
                        'logo.png',
                        height: 40,
                        width: 72,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          navItem(
                            title: 'Guides',
                            index: 0,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Pricing',
                            index: 1,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Team',
                            index: 2,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          navItem(
                            title: 'Stories',
                            index: 3,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        'account_btn.png',
                        height: 53,
                        width: 163,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 76,
                ),
                Container(
                  child: Image.asset(
                    'illustration.png',
                    height: 550,
                    width: 763,
                  ),
                ),
                SizedBox(
                  height: 83,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'icon_down_solid.png',
                      height: 24,
                      width: 24,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      'Scroll to Learn More',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
