import 'package:flutter/material.dart';

// Radius Dimensions
const double radiusSmall = 4.0;
const double radiusMedium = 8.0;
const double radiusLarge = 12.0;
const double radiusExtraLarge = 16.0;
const double radiusHuge = 20.0;
const double radiusCircular = 50.0; // For fully rounded elements

// BorderRadius Constants
const BorderRadius smallBorderRadius = BorderRadius.all(Radius.circular(radiusSmall));
const BorderRadius mediumBorderRadius = BorderRadius.all(Radius.circular(radiusMedium));
const BorderRadius largeBorderRadius = BorderRadius.all(Radius.circular(radiusLarge));
const BorderRadius extraLargeBorderRadius = BorderRadius.all(Radius.circular(radiusExtraLarge));
const BorderRadius hugeBorderRadius = BorderRadius.all(Radius.circular(radiusHuge));
const BorderRadius circularBorderRadius = BorderRadius.all(Radius.circular(radiusCircular));



// Heights
const double appBarHeight = kToolbarHeight;
const double buttonHeight = 48.0;
const double textFieldHeight = 56.0;

/// padding spaces
const double horizontalPaddingSpace = 15.0;


// Paddings
const EdgeInsets kPadding = EdgeInsets.all(15);
const EdgeInsets kVerticalPadding = EdgeInsets.symmetric(vertical: 15);
const EdgeInsets kHorizontalPadding  = EdgeInsets.symmetric(horizontal: 10);
const EdgeInsets cardPadding = EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0);

// Margins
const EdgeInsets sectionMargin = EdgeInsets.symmetric(vertical: 16.0);



// Shadows
const List<BoxShadow> defaultBoxShadow = [
  BoxShadow(
    color: Colors.black12,
    blurRadius: 8.0,
    offset: Offset(0, 4),
  ),
];

// Spacing Constants
const double spacingExtraSmall = 4.0;
const double spacingSmall = 8.0;
const double spacingMedium = 16.0;
const double spacingLarge = 24.0;
const double spacingExtraLarge = 32.0;
const double spacingXXL = 40.0;

// Horizontal SizedBoxes for spacing between widgets (Width)
const SizedBox extraSmallWidthSizedBox = SizedBox(width: spacingExtraSmall);
const SizedBox smallWidthSizedBox = SizedBox(width: spacingSmall);
const SizedBox mediumWidthSizedBox = SizedBox(width: spacingMedium);
const SizedBox largeWidthSizedBox = SizedBox(width: spacingLarge);
const SizedBox extraLargeWidthSizedBox = SizedBox(width: spacingExtraLarge);
const SizedBox xxlWidthSizedBox = SizedBox(width: spacingXXL);

// Vertical SizedBoxes for spacing between widgets (Height)
const SizedBox extraSmallHeightSizedBox = SizedBox(height: spacingExtraSmall);
const SizedBox smallHeightSizedBox = SizedBox(height: spacingSmall);
const SizedBox mediumHeightSizedBox = SizedBox(height: spacingMedium);
const SizedBox largeHeightSizedBox = SizedBox(height: spacingLarge);
const SizedBox extraLargeHeightSizedBox = SizedBox(height: spacingExtraLarge);
const SizedBox xxlHeightSizedBox = SizedBox(height: spacingXXL);

// Square SizedBoxes for equal spacing
const SizedBox extraSmallSizedBox = SizedBox.square(dimension: spacingExtraSmall);
const SizedBox smallSizedBox = SizedBox.square(dimension: spacingSmall);
const SizedBox mediumSizedBox = SizedBox.square(dimension: spacingMedium);
const SizedBox largeSizedBox = SizedBox.square(dimension: spacingLarge);
const SizedBox extraLargeSizedBox = SizedBox.square(dimension: spacingExtraLarge);
const SizedBox xxlSizedBox = SizedBox.square(dimension: spacingXXL);

