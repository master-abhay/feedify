import 'package:feedify/core/extensions/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_dimensions.dart';
import '../input_borders_hub/input_borders_hub.dart';
import 'package:feedify/core/themes/themes.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  final Widget? suffixIcon;
  final String? labelText;
  final String? hintText;
  final VoidCallback? onTap;
  final Function(String string)? onChanged;
  final Function(String string)? onSaved;
  final VoidCallback? onEditingComplete;
  final Function(PointerUpEvent pointerUpEvent)? onTapUpOutside;
  final bool? obscureText;
  final String? Function(String? string)? validator;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.nextFocusNode,
    this.suffixIcon,
    this.labelText,
    this.hintText,
    this.onTap,
    this.onChanged,
    this.onSaved,
    this.onEditingComplete,
    this.onTapUpOutside,
    this.obscureText,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      onTap: onTap,
      onTapOutside: (pointerDownEvent) => focusNode.unfocus(),
      onFieldSubmitted: (string) => FocusScope.of(context).requestFocus(nextFocusNode),
      onChanged: onChanged,
      onEditingComplete: onEditingComplete,
      onTapUpOutside: onTapUpOutside,
      keyboardType: TextInputType.text,
      cursorColor: AppColors.warmGray,
      cursorWidth: 1.25,
      obscureText: obscureText ?? false,
      validator: validator,
      decoration: InputDecoration(
        labelText: labelText ?? "Label",
        alignLabelWithHint: true,
        floatingLabelStyle: GoogleFonts.inter(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        labelStyle: const TextStyle(color:  AppColors.warmGray),
        hintStyle: const TextStyle(color:  AppColors.warmGray),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: extraLarge,
          vertical: medium,
        ),
        hintText: hintText ?? "Enter hint",
        suffixIcon: suffixIcon ,
        border: InputBorderHub.outlinedInputBorder(),
        errorBorder: InputBorderHub.outlinedInputBorder(borderColor: Colors.red),
        focusedBorder: InputBorderHub.outlinedInputBorder(),
        focusedErrorBorder: InputBorderHub.outlinedInputBorder(),
        disabledBorder: InputBorderHub.outlinedInputBorder(),
        enabledBorder: InputBorderHub.outlinedInputBorder(),
      ),
    );
  }
}