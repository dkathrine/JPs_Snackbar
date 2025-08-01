import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jps_snackbar/src/data/jp_icons_icons.dart';

class GlassyChip extends StatefulWidget {
  const GlassyChip({super.key, this.label = "Chip", this.showSymbols = false});

  final String label;
  final bool showSymbols;

  @override
  State<GlassyChip> createState() => _GlassyChipState();
}

class _GlassyChipState extends State<GlassyChip> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },

      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          child: Container(
            padding: EdgeInsets.fromLTRB(
              widget.showSymbols ? 16 : 32,
              12,
              widget.showSymbols ? 17 : 34,
              11,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(isClicked ? 70 : 20),
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: Colors.white.withAlpha(50)),
            ),
            child: widget.showSymbols
                ? Row(
                    spacing: 6,
                    children: [
                      Icon(
                        JpIcons.lunch,
                        size: MediaQuery.of(context).size.width * 0.042,
                        color: isClicked
                            ? Color(0xFF302C23)
                            : Color.fromRGBO(235, 235, 245, 0.6),
                        weight: isClicked ? 700 : 600,
                      ),
                      Text(
                        widget.label,
                        style: GoogleFonts.roboto(
                          color: isClicked
                              ? Color(0xFF302C23)
                              : Color.fromRGBO(235, 235, 245, 0.6),
                          fontWeight: isClicked
                              ? FontWeight.w700
                              : FontWeight.w600,
                          fontSize: 12,
                          //letterSpacing: -0.35,
                        ),
                      ),
                      Icon(
                        JpIcons.chevron_down,
                        size: MediaQuery.of(context).size.width * 0.02,
                        color: isClicked
                            ? Color(0xFF302C23)
                            : Color.fromRGBO(235, 235, 245, 0.6),
                        weight: isClicked ? 700 : 600,
                      ),
                    ],
                  )
                : Text(
                    widget.label,
                    style: GoogleFonts.roboto(
                      color: isClicked
                          ? Color(0xFF302C23)
                          : Color.fromRGBO(235, 235, 245, 0.6),
                      fontWeight: isClicked ? FontWeight.w700 : FontWeight.w600,
                      fontSize: 12,
                      //letterSpacing: -0.35,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
