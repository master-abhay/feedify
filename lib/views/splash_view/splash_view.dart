import 'package:feedify/core/mixins/media_query_mixin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with MediaQueryMixin{
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        /// Gradient background
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  theme.colorScheme.onPrimary,
                  theme.colorScheme.primary,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.repeated,
                stops: const [
                  0.3,
                  0.7,
                ]),
          ),
        ),
        /// Big burger image
        const Positioned(
            bottom: 0,
            left: 0,
            child: Image(
              image: AssetImage("assets/splash/bg_big_burger.png"),
            )),
        /// Small burger image
         Positioned(
            bottom: 0,
            left: screenWidth/10,
            child: const Image(
              image: AssetImage("assets/splash/bg_small_burger.png"),
            )),
        /// LOGO or Title
        Positioned.fill(
          bottom: screenHeight/5,
          child: Container(
              alignment: Alignment.center,
              child:  Text(
                "Feedify",
                style: GoogleFonts.lobster(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 64,
                  fontWeight: FontWeight.w400,
                ),
              )),
        )
      ],
    );
  }
}
