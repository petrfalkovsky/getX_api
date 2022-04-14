import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const WhiteButton({
    Key? key,
    this.borderRadius,
    this.width,
    this.height = 60.0,
    this.gradient = const LinearGradient(colors: [Colors.cyan, Colors.indigo]),
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(50);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onSurface: Colors.transparent,
          side: BorderSide(color: Colors.white.withOpacity(0), width: 0),
          elevation: 0,
          shadowColor: Color.fromARGB(255, 241, 196, 210),
          minimumSize: Size(114, 60),
          maximumSize: Size(248, 60),
          primary: Color.fromARGB(0, 22, 21, 21),
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
