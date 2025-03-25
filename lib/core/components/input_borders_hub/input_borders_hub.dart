import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../constants/app_dimensions.dart';

class InputBorderHub {
  static outlinedInputBorder({Color? borderColor}) => OutlineInputBorder(
        borderRadius: hugeBorderRadius,
        borderSide: BorderSide(
          color: borderColor ?? AppColors.warmGray,
          width: 2,
          strokeAlign: 2,
        ),
      );
}
