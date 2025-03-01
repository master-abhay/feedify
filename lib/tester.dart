import 'package:feedify/core/components/tooltip/gesture_tooltip.dart';
import 'package:flutter/material.dart';

class Tester extends StatefulWidget {
  const Tester({super.key});

  @override
  State<Tester> createState() => _TesterState();
}

class _TesterState extends State<Tester> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: GestureTooltip(
                tooltip: "tooltip",
                onTap: () {},
                child: Icon(Icons.favorite_outlined, color: Colors.red)),
          )
        ],
      ),
    );
  }
}
