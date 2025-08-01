import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jps_snackbar/src/data/jp_icons_icons.dart';
import 'package:jps_snackbar/src/common/bottom_modal.dart';

class SnackishCards extends StatelessWidget {
  SnackishCards({
    super.key,
    required this.snackImage,
    required this.snackName,
    required this.snackDesc,
    this.snackPrice = "8.99",
  }) : randomSnackLikes = 100 + Random().nextInt(900);

  final ImageProvider snackImage;
  final String snackName;
  final String snackDesc;
  final String snackPrice;
  final int randomSnackLikes;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet<dynamic>(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (BuildContext context) {
            return BottomModal(
              snackImage: snackImage,
              snackName: snackName,
              snackPrice: snackPrice,
              snackLikes: '$randomSnackLikes',
              onTap: () => Navigator.pop(context),
            );
          },
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.55,
            height: MediaQuery.of(context).size.height * 0.32,
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white.withAlpha(50)),
              gradient: LinearGradient(
                colors: [
                  Colors.white.withAlpha(0),
                  Color(0xFF908CF5),
                  Color(0xFF8C5BEA),
                ],
                //stops: [0.07, 0.61, 1],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              spacing: 10,
              children: [
                Image(
                  image: snackImage,
                  width: MediaQuery.of(context).size.width * 0.41,
                  height: MediaQuery.of(context).size.height * 0.19,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          snackName,
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.0347,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.5,
                          ),
                        ),
                        Text(
                          snackDesc,
                          style: GoogleFonts.roboto(
                            color: Color.fromRGBO(235, 235, 245, 0.6),
                            fontSize: MediaQuery.of(context).size.width * 0.032,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 2,
                          children: [
                            Icon(
                              JpIcons.austral,
                              size: MediaQuery.of(context).size.width * 0.0347,
                              color: Colors.white,
                            ),
                            Text(
                              snackPrice,
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.0347,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.24,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 6,
                          children: [
                            Icon(
                              JpIcons.heart,
                              size: MediaQuery.of(context).size.width * 0.0347,
                              color: Color.fromRGBO(235, 235, 245, 0.6),
                            ),
                            Text(
                              '$randomSnackLikes',
                              style: GoogleFonts.roboto(
                                color: Color.fromRGBO(235, 235, 245, 0.6),
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.0347,
                                letterSpacing: 0.07,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
