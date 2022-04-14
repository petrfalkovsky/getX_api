import 'package:flutter/material.dart';

class ButtonWhiteLong extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const ButtonWhiteLong({
    Key? key,
    this.borderRadius,
    this.width,
    this.height = 40.0,
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
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 27, 17, 167).withOpacity(0.05),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(3, 0),
          )
        ],
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
          shadowColor: Color.fromARGB(255, 44, 39, 41),
          minimumSize: Size(333, 40),
          maximumSize: Size(333, 40),
          primary: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}

class GragientLongButtonTwo extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const GragientLongButtonTwo({
    Key? key,
    this.borderRadius,
    this.width,
    this.height = 40.0,
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
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 27, 17, 167).withOpacity(0.25),
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(3, 0),
          )
        ],
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(127, 187, 251, 1),
              Color.fromRGBO(149, 134, 253, 1),
            ]),
        borderRadius: borderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          onSurface: Colors.transparent,
          side: BorderSide(color: Colors.white.withOpacity(0), width: 0),
          elevation: 0,
          shadowColor: Color.fromARGB(255, 44, 39, 41),
          minimumSize: Size(333, 40),
          maximumSize: Size(360, 40),
          primary: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}
