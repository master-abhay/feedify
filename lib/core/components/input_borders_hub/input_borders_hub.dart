import 'package:flutter/material.dart';

import '../../constants/app_dimensions.dart';
import '../../themes/app_colors/app_colors.dart';



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
