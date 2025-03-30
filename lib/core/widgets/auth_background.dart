import 'package:feedify/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../components/tooltip/gesture_tooltip.dart';
import '../constants/constants.dart';
import '../constants/app_dimensions.dart';
import '../services/services.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  const AuthBackground({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SafeArea(
          child: Column(
            children: [
              // back button
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureTooltip(
                    tooltip: "Go Back",
                    borderRadius: radiusLarge,
                    onTap: getIt<BaseNavigationService>().goBack,
                    child: const Padding(
                      padding: kHorizontalPadding,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              /// app name
              Text(
                context.l10n.appName,
                style: GoogleFonts.lobster(
                  color: Colors.white,
                  fontSize: 64,
                  fontWeight: FontWeight.w600,
                ),
              ),
              smallWidthSizedBox,

              /// Welcome text
              Text(
                context.l10n.appSlogan,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),

        /// content container
        Expanded(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radiusHuge),
                topRight: Radius.circular(radiusHuge),
              ),
            ),
            child: child,
          ),
        )
      ],
    );
  }
}
