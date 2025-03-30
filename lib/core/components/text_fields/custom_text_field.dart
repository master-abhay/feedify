import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/app_dimensions.dart';
import '../input_borders_hub/input_borders_hub.dart';
import 'package:feedify/core/themes/themes.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final FocusNode focusNode;
  final FocusNode? nextFocusNode;
  final IconData? icon;
  final String? labelText;
  final String? hintText;
  final VoidCallback? onTap;
  final Function(String string)? onChanged;
  final Function(String string)? onSaved;
  final VoidCallback? onEditingComplete;
  final Function(PointerUpEvent pointerUpEvent)? onTapUpOutside;
  final bool? obscureText;

  const CustomTextField({
    super.key,
    this.controller,
    required this.focusNode,
    this.nextFocusNode,
    this.icon,
    this.labelText,
    this.hintText,
    this.onTap,
    this.onChanged,
    this.onSaved,
    this.onEditingComplete,
    this.onTapUpOutside,
    this.obscureText,
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
      decoration: InputDecoration(
        labelText: labelText ?? "Label",
        floatingLabelStyle: GoogleFonts.inter(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.normal,
        ),
        alignLabelWithHint: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: extraLarge,
        ),
        hintText: hintText ?? "Enter hint",
        suffixIcon: icon != null ?   Icon(
         icon ??  Icons.emoji_emotions,
          color: AppColors.warmGray,
        ) : null ,
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
