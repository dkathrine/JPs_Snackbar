import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jps_snackbar/src/data/jp_icons_icons.dart';
import 'package:jps_snackbar/src/common/gradient_button.dart';

class BottomModal extends StatelessWidget {
  const BottomModal({
    super.key,
    required this.snackImage,
    required this.snackName,
    required this.snackPrice,
    required this.snackLikes,
    this.onTap,
  });

  final ImageProvider snackImage;
  final String snackName;
  final String snackPrice;
  final String snackLikes;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: MediaQuery.of(context).size.height * 0.8853,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        gradient: LinearGradient(
          colors: [Color(0xFF2F2B22), Color(0xFF354242)],
          stops: [0.6, 1.0],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -MediaQuery.of(context).size.width * 0.335,
            child: Image(
              image: snackImage,
              width: MediaQuery.of(context).size.width * 1.0,
              height: MediaQuery.of(context).size.width * 1.0,
            ),
          ),
          Positioned(
            top: 18,
            right: 15,
            child: GestureDetector(
              onTap: onTap,
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white.withAlpha(50)),
                ),
                child: Icon(
                  JpIcons.cancel,
                  size: 12,
                  color: Color.fromRGBO(127, 127, 127, 0.9),
                ),
              ),
            ),
          ),
          Positioned(
            right: 26,
            top: 173,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8718,
                  height: MediaQuery.of(context).size.height * 0.3893,
                  padding: EdgeInsets.fromLTRB(30, 16, 30, 30),
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(1),
                    border: Border.all(color: Colors.white.withAlpha(30)),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Row(
                        spacing: 8,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            JpIcons.heart,
                            size: MediaQuery.of(context).size.width * 0.0347,
                            color: Color.fromRGBO(235, 235, 245, 0.6),
                          ),
                          Text(
                            snackLikes,
                            style: GoogleFonts.roboto(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.0347,
                              color: Color.fromRGBO(235, 235, 245, 0.6),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        snackName,
                        style: GoogleFonts.inter(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: MediaQuery.of(context).size.width * 0.056,
                          letterSpacing: 0.35,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          color: Color.fromRGBO(235, 235, 245, 0.6),
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.width * 0.0347,
                          letterSpacing: -0.08,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 2,
                        children: [
                          Icon(
                            JpIcons.austral,
                            color: Colors.white,
                            size: MediaQuery.of(context).size.width * 0.043,
                          ),
                          Text(
                            snackPrice,
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.0433,
                              letterSpacing: 0.35,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 22),
                      Divider(color: Colors.white.withAlpha(50)),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 8,
                            children: [
                              Text(
                                'Ingredients',
                                style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(235, 235, 245, 0.6),
                                  fontWeight: FontWeight.w600,
                                  fontSize:
                                      MediaQuery.of(context).size.width *
                                      0.0293,
                                  letterSpacing: -0.08,
                                ),
                              ),
                              Row(
                                spacing: 3,
                                children: [
                                  Icon(
                                    JpIcons.gluten_1,
                                    size:
                                        MediaQuery.of(context).size.width *
                                        0.04723,
                                    color: Color(0xFFD9D9D9),
                                  ),
                                  Icon(
                                    JpIcons.sugar,
                                    size:
                                        MediaQuery.of(context).size.width *
                                        0.04723,
                                    color: Color(0xFFD9D9D9),
                                  ),
                                  Icon(
                                    JpIcons.lowfat,
                                    size:
                                        MediaQuery.of(context).size.width *
                                        0.04723,
                                    color: Color(0xFFD9D9D9),
                                  ),
                                  Icon(
                                    JpIcons.kcal,
                                    size:
                                        MediaQuery.of(context).size.width *
                                        0.04723,
                                    color: Color(0xFFD9D9D9),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 8,
                            children: [
                              Text(
                                'Reviews',
                                style: GoogleFonts.roboto(
                                  color: Color.fromRGBO(235, 235, 245, 0.6),
                                  fontWeight: FontWeight.w600,
                                  fontSize:
                                      MediaQuery.of(context).size.width *
                                      0.0293,
                                  letterSpacing: -0.08,
                                ),
                              ),
                              Row(
                                spacing: 16,
                                children: [
                                  Row(
                                    spacing: 3,
                                    children: [
                                      Icon(
                                        JpIcons.star_filled,
                                        size:
                                            MediaQuery.of(context).size.width *
                                            0.03096,
                                        color: Colors.white,
                                      ),
                                      Icon(
                                        JpIcons.star_filled,
                                        size:
                                            MediaQuery.of(context).size.width *
                                            0.03096,
                                        color: Colors.white,
                                      ),
                                      Icon(
                                        JpIcons.star_filled,
                                        size:
                                            MediaQuery.of(context).size.width *
                                            0.03096,
                                        color: Colors.white,
                                      ),
                                      Icon(
                                        JpIcons.star_filled,
                                        size:
                                            MediaQuery.of(context).size.width *
                                            0.03096,
                                        color: Colors.white,
                                      ),
                                      Icon(
                                        JpIcons.star,
                                        size:
                                            MediaQuery.of(context).size.width *
                                            0.03096,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '4.0',
                                    style: GoogleFonts.roboto(
                                      color: Color.fromRGBO(235, 235, 245, 0.6),
                                      fontWeight: FontWeight.w800,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                          0.0293,
                                      letterSpacing: -0.08,
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
          ),
          Positioned(
            bottom: 55,
            left: 26,
            right: 26,
            child: Column(
              spacing: 32,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(9),
                        color: Color.fromRGBO(118, 118, 128, 0.24),
                      ),
                      child: Row(
                        //spacing: 10,
                        children: [
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                            child: Text(
                              'Small',
                              style: GoogleFonts.roboto(
                                color: Color.fromRGBO(235, 235, 245, 0.6),
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.0293,
                                letterSpacing: -0.08,
                              ),
                            ),
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                              color: Color.fromRGBO(142, 142, 147, 0.3),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                            child: Text(
                              'Medium',
                              style: GoogleFonts.roboto(
                                color: Color.fromRGBO(235, 235, 245, 0.6),
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.0293,
                                letterSpacing: -0.08,
                              ),
                            ),
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                              //color: Color.fromRGBO(142, 142, 147, 0.3),
                              color: Colors.transparent,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(10, 3, 10, 3),
                            decoration: BoxDecoration(
                              color: Color(0xFF636366),
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: Text(
                              'Large',
                              style: GoogleFonts.roboto(
                                color: Color(0xFFEBEBF5),
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.0293,
                                letterSpacing: -0.08,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      spacing: 16,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.white.withAlpha(50),
                            ),
                            color: Color.fromRGBO(255, 255, 255, 0.05),
                          ),
                          child: Icon(
                            Icons.remove,
                            size: MediaQuery.of(context).size.width * 0.04,
                            color: Color.fromRGBO(127, 127, 127, 0.5),
                          ),
                        ),
                        Text(
                          '1',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.0433,
                          ),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.white.withAlpha(50),
                            ),
                            color: Color.fromRGBO(255, 255, 255, 0.05),
                          ),
                          child: Icon(
                            Icons.add,
                            size: MediaQuery.of(context).size.width * 0.04,
                            color: Color.fromRGBO(127, 127, 127, 0.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                GradientButton(
                  isPurple: false,
                  label: 'Add to order for \u20B3 $snackPrice',
                  widthPadding: MediaQuery.of(context).size.width * 0.198,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
