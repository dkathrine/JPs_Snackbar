import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientButton extends StatelessWidget {
  GradientButton({
    super.key,
    required this.isPurple,
    required this.label,
    this.onTap,
    this.widthPadding = 26,
    this.heightPadding = 14,
    this.fontSize = 17,
  });

  final bool isPurple;
  final String label;
  final VoidCallback? onTap;
  final double widthPadding;
  final double heightPadding;
  final double fontSize;

  final Gradient pinkGradient = RadialGradient(
    colors: [Color(0xFFF69EA3), Color(0xFFE970C4)],
    center: Alignment.centerRight,
    radius: 2.5,
  );

  final Gradient purpleGradient = RadialGradient(
    colors: [Color(0xFF908CF5), Color(0xFFBB8DE1)],
    center: Alignment.centerRight,
    radius: 2.5,
  );

  final Gradient overlayGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(254, 200, 241, 0.8),
      Color.fromRGBO(237, 146, 215, 0),
      Color.fromRGBO(237, 146, 215, 0),
      Color.fromRGBO(237, 146, 215, 0),
    ],
    stops: [0.01, 0.22, 0.5, 1],
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(left: 1, bottom: 1, right: 1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -3),
              blurStyle: BlurStyle.inner,
              blurRadius: 24,
              color: Color(0xFF9375B6),
            ),
            BoxShadow(
              offset: Offset(0, 0),
              blurStyle: BlurStyle.inner,
              blurRadius: 15,
              color: Color(0xFFFFACE4),
            ),
            BoxShadow(
              offset: Offset(0, 30),
              blurRadius: 90,
              color: Color(0x7EEA71C5),
            ),
          ],
          gradient: isPurple ? purpleGradient : pinkGradient,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                /* 26, 14, 26, 14 */
                padding: EdgeInsets.fromLTRB(
                  widthPadding,
                  heightPadding,
                  widthPadding,
                  heightPadding,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: isPurple ? purpleGradient : pinkGradient,
                ),
                child: Text(
                  label,
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: fontSize,
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: overlayGradient,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
