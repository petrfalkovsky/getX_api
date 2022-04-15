import 'dart:ui';

import 'package:flutter/material.dart';

class BlurBubble extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const BlurBubble({
    Key? key,
    this.borderRadius,
    this.width,
    this.height,
    this.gradient = const LinearGradient(colors: [Colors.cyan, Colors.indigo]),
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(20);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5,
              sigmaY: 5,
            ),
            child: Container(
              constraints: BoxConstraints(
                minHeight: 37,
                minWidth: 60,
                maxHeight: 37,
                // maxWidth: 300,
              ),
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.3),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 27, 17, 167).withOpacity(0.2),
                    spreadRadius: 0.5,
                    blurRadius: 25,
                    offset: Offset(0, 0),
                  )
                ],
                borderRadius: borderRadius,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Center(child: child),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
