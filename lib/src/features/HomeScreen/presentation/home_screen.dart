import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jps_snackbar/src/common/glassy_chip.dart';
import 'package:jps_snackbar/src/common/gradient_button.dart';
import 'package:jps_snackbar/src/data/jp_icons_icons.dart';
import 'package:jps_snackbar/src/common/snackish_cards.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> categories = [
    'All categories',
    'Salty',
    'Sweet',
    'Drinks',
  ];

  final List<Map<String, dynamic>> snacks = [
    {
      'snackImage': 'assets/grafiken/cupkake_cat.png',
      'snackName': "Mogli's Cup",
      'snackDesc': 'Strawberry ice cream',
    },
    {
      'snackImage': 'assets/grafiken/icecream.png',
      'snackName': "Balu's Cup",
      'snackDesc': 'Pistachio ice cream',
    },
    {
      'snackImage': 'assets/grafiken/icecream_stick.png',
      'snackName': "Smiling David",
      'snackDesc': 'Coffee ice cream',
      'snackPrice': '3.99',
    },
    {
      'snackImage': 'assets/grafiken/icecream_cone.png',
      'snackName': "Kai in a Cone",
      'snackDesc': 'Vanilla ice cream',
      'snackPrice': '3.99',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/hintergründe/bg_mainscreen.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                SizedBox(height: MediaQuery.of(context).size.width * 0.16),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Text(
                    'Choose Your Favourite Snack',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: MediaQuery.of(context).size.width * 0.055,
                      letterSpacing: 0.35,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Row(
                    spacing: 8,
                    children: [
                      ...categories.map((category) {
                        if (category == "All categories") {
                          return RepaintBoundary(
                            child: GlassyChip(
                              label: category,
                              showSymbols: true,
                            ),
                          );
                        } else {
                          return RepaintBoundary(
                            child: GlassyChip(label: category),
                          );
                        }
                      }),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            Stack(
              //alignment: AlignmentDirectional.centerStart,
              children: [
                PhysicalShape(
                  clipper: DiagonalClipper(),
                  color: Colors.transparent,
                  elevation: 0,
                  clipBehavior: Clip.antiAlias,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(33),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.width * 0.583,
                        padding: EdgeInsets.fromLTRB(20, 20, 28, 32),
                        decoration: BoxDecoration(
                          /* color: Colors.white.withAlpha(20),
                          border: Border.all(color: Colors.white.withAlpha(50)),
                          borderRadius: BorderRadius.circular(30), */
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage('assets/details/cut_card.png'),
                            fit: BoxFit.fill,
                            opacity: 0.2,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 6,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Angi's Yummy Burger",
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                            0.042,
                                      ),
                                    ),
                                    Row(
                                      spacing: 4,
                                      children: [
                                        Icon(
                                          JpIcons.star,
                                          color: Color(0xFFE970C4),
                                          size:
                                              MediaQuery.of(
                                                context,
                                              ).size.width *
                                              0.0298,
                                        ),
                                        Text(
                                          '4.8',
                                          style: GoogleFonts.roboto(
                                            color: Color(0xFFD9D9D9),
                                            fontSize:
                                                MediaQuery.of(
                                                  context,
                                                ).size.width *
                                                0.0293,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 6),
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  child: Text(
                                    'Delish vegan burger that tastes like heaven',
                                    style: GoogleFonts.roboto(
                                      color: Color(0xFFD9D9D9),
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                          0.032,
                                      letterSpacing: 0.35,
                                    ),
                                  ),
                                ),
                                Row(
                                  spacing: 4,
                                  children: [
                                    Icon(
                                      JpIcons.austral,
                                      color: Colors.white,
                                      size:
                                          MediaQuery.of(context).size.width *
                                          0.039,
                                    ),
                                    Text(
                                      '13.99',
                                      style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize:
                                            MediaQuery.of(context).size.width *
                                            0.04,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            GradientButton(
                              isPurple: true,
                              label: 'Add to order',
                              widthPadding: 14,
                              heightPadding: 14,
                              fontSize: 12,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 37,
                  child: Image(
                    image: AssetImage('assets/grafiken/burger.png'),
                    width: MediaQuery.of(context).size.width * 0.55,
                    height: MediaQuery.of(context).size.width * 0.55,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Text(
                    'We Recommend',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: MediaQuery.of(context).size.width * 0.04,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0.35,
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.05,
                  ),
                  child: Row(
                    spacing: 24,
                    children: [
                      ...snacks.map((snack) {
                        if (snack['snackPrice'] != null) {
                          return SnackishCards(
                            snackImage: AssetImage(snack['snackImage']),
                            snackName: snack['snackName'],
                            snackDesc: snack['snackDesc'],
                            snackPrice: snack['snackPrice'],
                          );
                        } else {
                          return SnackishCards(
                            snackImage: AssetImage(snack['snackImage']),
                            snackName: snack['snackName'],
                            snackDesc: snack['snackDesc'],
                          );
                        }
                      }),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 38),
          ],
        ),
      ],
    );
  }
}

class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const radius = 30.0;

    final path = Path();

    path.moveTo(0, radius);
    path.quadraticBezierTo(0, 0, radius, 0); // top-left corner
    path.lineTo(size.width - radius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, radius); // top-right

    path.lineTo(size.width, size.height * 0.85); // right side down
    path.lineTo(0, size.height); // diagonal bottom edge

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

/* 
// 11px
MediaQuery.of(context).size.width * 0.0293

// 12px
MediaQuery.of(context).size.width * 0.032

// 13px
MediaQuery.of(context).size.width * 0.0347

//15px
MediaQuery.of(context).size.width * 0.04

//17px
MediaQuery.of(context).size.width * 0.0433

// 22px
MediaQuery.of(context).size.width * 0.056
*/
