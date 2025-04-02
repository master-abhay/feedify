import 'package:feedify/core/extensions/extensions.dart';
import 'package:flutter/material.dart';

import '../components.dart';
import 'package:feedify/core/themes/themes.dart';
import 'package:feedify/core/constants/constants.dart';
import 'package:feedify/core/utils/utils.dart';

class CommonButton extends StatelessWidget {
  final String text;
  final String tooltip;
  final VoidCallback onPressed;
  final bool isLoading;
  final bool isDisabled;

  const CommonButton({super.key,
    required this.text,
    required this.tooltip,
    required this.onPressed,
    this.isLoading = false,
    this.isDisabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureTooltip(
      tooltip: "Press to login",
      child: MaterialButton(
        onPressed: isLoading ? () {} : onPressed,
        elevation: 1,
        height: 55,
        shape: const RoundedRectangleBorder(borderRadius: largeBorderRadius),
        visualDensity: VisualDensity.compact,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        padding: EdgeInsets.zero,
        color: AppColors.brightRed,
        child: isLoading
            ? Utils.loadingIndicator()
            : Text(
                "LOG IN",
                style: context.theme.textTheme.titleLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
      ),
    );
  }
}
