import 'package:flutter/material.dart';

class GestureTooltip extends StatelessWidget {
  final String tooltip;
  final Widget child;

  final VoidCallback onTap;
  double? borderRadius;
  bool containedInkWell;

  GestureTooltip({
    super.key,
    required this.tooltip,
    required this.onTap,
    this.borderRadius,
    this.containedInkWell = true,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: Material(
        color: Colors.transparent,
        borderRadius: borderRadius != null ? BorderRadius.circular(borderRadius!) : null,
        child: InkWell(
          onTap: onTap,
          borderRadius: borderRadius != null ? BorderRadius.circular(borderRadius!) : null,
          child: child,
        ),
      ),
    );
  }
}
