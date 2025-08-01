import 'dart:ui';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:jps_snackbar/src/common/gradient_button.dart';
import 'package:jps_snackbar/src/features/HomeScreen/presentation/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/hintergründe/bg_startscreen.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          right: MediaQuery.of(context).size.width * -0.32,
          top: MediaQuery.of(context).size.width * 0.26,
          child: Stack(
            children: [
              Image(
                image: AssetImage('assets/grafiken/cupcake_chick.png'),
                width: MediaQuery.of(context).size.width * 1.385,
                height: MediaQuery.of(context).size.width * 1.385,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: MediaQuery.of(context).size.width * 0.84,
                right: /* 132 */ MediaQuery.of(context).size.width * 0.32,
                child: BlendMask(
                  opacity: 1,
                  blendMode: BlendMode.overlay,
                  child: Image(
                    image: AssetImage('assets/details/snack_snack.png'),
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),

        Positioned(
          top: MediaQuery.of(context).size.width * 1.4,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.86,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Colors.black.withAlpha(20),
                  borderRadius: BorderRadius.circular(30),
                  border: BoxBorder.all(
                    color: const Color.fromRGBO(255, 255, 255, 0.2),
                    width: 1,
                  ),
                ),
                child: Column(
                  spacing: 25,
                  children: [
                    Column(
                      spacing: 5,
                      children: [
                        Text(
                          'Feeling Snackish Today?',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: /* 22 */
                                MediaQuery.of(context).size.width * 0.055,
                            letterSpacing: 0.35,
                          ),
                        ),
                        Text(
                          "Explore Angi's most popular snack selection and get instantly happy.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.roboto(
                            color: Color.fromRGBO(235, 235, 245, 0.6),
                            fontSize: /* 13 */
                                MediaQuery.of(context).size.width * 0.032,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.08,
                          ),
                        ),
                      ],
                    ),
                    GradientButton(
                      widthPadding: 52,
                      isPurple: false,
                      label: 'Order Now',
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return Scaffold(body: HomeScreen());
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// Applies a BlendMode to its child.
class BlendMask extends SingleChildRenderObjectWidget {
  final BlendMode blendMode;
  final double opacity;

  const BlendMask({
    required this.blendMode,
    this.opacity = 1.0,
    super.key,
    super.child,
  });

  @override
  RenderObject createRenderObject(context) {
    return RenderBlendMask(blendMode, opacity);
  }

  @override
  void updateRenderObject(BuildContext context, RenderBlendMask renderObject) {
    renderObject.blendMode = blendMode;
    renderObject.opacity = opacity;
  }
}

class RenderBlendMask extends RenderProxyBox {
  BlendMode blendMode;
  double opacity;

  RenderBlendMask(this.blendMode, this.opacity);

  @override
  void paint(context, offset) {
    // Create a new layer and specify the blend mode and opacity to composite it with:
    context.canvas.saveLayer(
      offset & size,
      Paint()
        ..blendMode = blendMode
        ..color = Color.fromARGB((opacity * 255).round(), 255, 255, 255),
    );

    super.paint(context, offset);

    // Composite the layer back into the canvas using the blendmode:
    context.canvas.restore();
  }
}
