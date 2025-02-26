import 'package:flutter/material.dart';

class GestureTooltip extends StatelessWidget {
  final String tooltip;
  final Widget child;
  Function()? onTap;

  GestureTooltip(
      {super.key, required this.tooltip, required this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: InkResponse(
        onTap: onTap,
        child: child,
      ),
    );
  }
}
