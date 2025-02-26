import 'package:flutter/material.dart';

// Card radii
const double cardRadiusSmall = 8.0;
const double cardRadiusMedium = 12.0;
const double cardRadiusLarge = 16.0;
const double cardRadiusExtraLarge = 20.0;

/// text field radius
const double smallTextFieldRadius = 5;
const double mediumTextFieldRadius = 10;
const double largeTextFieldRadius = 15;
const double extraLargeTextFieldRadius = 20;


// Heights
const double appBarHeight = kToolbarHeight;
const double buttonHeight = 48.0;
const double textFieldHeight = 56.0;

/// padding spaces
const double horizontalPaddingSpace = 15.0;


// Paddings
const EdgeInsets kPadding = EdgeInsets.all(15);
const EdgeInsets kVerticalPadding = EdgeInsets.symmetric(vertical: 15);
const EdgeInsets kHorizontalPadding  = EdgeInsets.symmetric(horizontal: 15);
const EdgeInsets cardPadding = EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0);

// Margins
const EdgeInsets sectionMargin = EdgeInsets.symmetric(vertical: 16.0);

// Border Radii
final BorderRadius cardBorderRadiusSmall = BorderRadius.circular(cardRadiusSmall);
final BorderRadius cardBorderRadiusMedium = BorderRadius.circular(cardRadiusMedium);
final BorderRadius cardBorderRadiusLarge = BorderRadius.circular(cardRadiusLarge);

// Shadows
const List<BoxShadow> defaultBoxShadow = [
  BoxShadow(
    color: Colors.black12,
    blurRadius: 8.0,
    offset: Offset(0, 4),
  ),
];

// Spacing
const double spacingSmall = 8.0;
const double spacingMedium = 16.0;
const double spacingLarge = 24.0;

// SizedBoxes for spacing between widgets
const SizedBox smallSizedBox = SizedBox.square(dimension: spacingSmall);
const SizedBox mediumSizedBox = SizedBox.square(dimension: spacingMedium);
const SizedBox largeSizedBox = SizedBox.square(dimension: spacingLarge);
