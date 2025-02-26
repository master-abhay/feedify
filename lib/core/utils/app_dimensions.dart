import 'package:flutter/material.dart';

class AppDimensions {
  // Card radii
  static const double cardRadiusSmall = 8.0;
  static const double cardRadiusMedium = 12.0;
  static const double cardRadiusLarge = 16.0;

  // Heights
  static const double appBarHeight = kToolbarHeight;
  static const double buttonHeight = 48.0;
  static const double textFieldHeight = 56.0;

  // Paddings
  static const EdgeInsets kPadding = EdgeInsets.all(15);
  static const EdgeInsets cardPadding = EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0,);

  // Margins
  static const EdgeInsets sectionMargin = EdgeInsets.symmetric(vertical: 16.0);

  // Border Radii
  static final BorderRadius cardBorderRadiusSmall = BorderRadius.circular(cardRadiusSmall);
  static final BorderRadius cardBorderRadiusMedium = BorderRadius.circular(cardRadiusMedium);
  static final BorderRadius cardBorderRadiusLarge = BorderRadius.circular(cardRadiusLarge);

  // Shadows
  static const List<BoxShadow> defaultBoxShadow = [BoxShadow(
      color: Colors.black12,
      blurRadius: 8.0,
      offset: Offset(0, 4),
    ),
  ];

  // Spacing
  static const double spacingSmall = 8.0;
  static const double spacingMedium = 16.0;
  static const double spacingLarge = 24.0;

  // sized box for spacing between widgets
  static const SizedBox smallSizedBox = SizedBox.square(dimension: spacingSmall);
  static const SizedBox mediumSizedBox = SizedBox.square(dimension: spacingMedium);
  static const SizedBox largeSizedBox = SizedBox.square(dimension: spacingLarge);
}