import 'package:flutter/material.dart';

class CustomAnimatedSwitcher extends StatelessWidget {
  final bool value;
  final Widget trueChild;
  final Widget falseChild;
  final Duration duration;
  final AnimatedSwitcherTransitionBuilder transitionBuilder;

  const CustomAnimatedSwitcher({
    super.key,
    required this.value,
    required this.trueChild,
    required this.falseChild,
    this.duration = const Duration(milliseconds: 300),
    this.transitionBuilder = _defaultTransition,
  });

  static Widget _defaultTransition(Widget child, Animation<double> animation) {
    return ScaleTransition(scale: animation, child: child);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration,
      transitionBuilder: transitionBuilder,
      child: value ? trueChild : falseChild,
    );
  }
}
