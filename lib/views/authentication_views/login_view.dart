import 'package:feedify/core/components/tooltip/gesture_tooltip.dart';
import 'package:feedify/core/services/navigation_services.dart';
import 'package:feedify/core/utils/app_constants.dart';
import 'package:feedify/core/utils/app_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(backgroundColor: theme.colorScheme.primary,
        body: _buildUi(context:context,theme: theme),
    );
  }

  Widget _buildUi({required BuildContext context,required ThemeData theme}) {
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
                    onTap: NavigationServices.instance.goBack,
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
                AppConstants.appName,
                style: GoogleFonts.lobster(
                  color: Colors.white,
                  fontSize: 64,
                  fontWeight: FontWeight.w600,
                ),
              ),
              smallWidthSizedBox,

              /// Welcome text
              Text(
                AppConstants.greetingText,
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
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radiusHuge),
                topRight: Radius.circular(radiusHuge)),
          ),
        ))
      ],
    );
  }
}
