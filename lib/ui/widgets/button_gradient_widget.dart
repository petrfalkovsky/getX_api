import 'package:flutter/material.dart';

class GragientIconButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;
  final Widget icon;

  const GragientIconButton({
    Key? key,
    this.borderRadius,
    this.width,
    this.height = 40.0,
    this.gradient = const LinearGradient(colors: [Colors.cyan, Colors.indigo]),
    required this.onPressed,
    required this.child,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(50);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(255, 139, 173, 1),
              Color.fromRGBO(127, 187, 251, 1),
            ]),
        borderRadius: borderRadius,
      ),
      child: Row(
        children: [
          ElevatedButton.icon(
            icon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: icon,
            ),
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              side: BorderSide(color: Colors.white.withOpacity(0), width: 0),
              elevation: 0.0,
              shadowColor: Color.fromARGB(255, 241, 196, 210),
              minimumSize: Size(114, 40),
              maximumSize: Size(150, 40),
              primary: Colors.transparent,
              onPrimary: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: borderRadius),
              splashFactory: NoSplash.splashFactory,
            ),
            label: child,
          ),
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: icon,
          // ),
        ],
      ),
    );
  }
}

class GragientButton extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const GragientButton({
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
        gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromRGBO(255, 139, 173, 1),
              Color.fromRGBO(127, 187, 251, 1),
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
          shadowColor: Color.fromARGB(255, 241, 196, 210),
          minimumSize: Size(114, 40),
          maximumSize: Size(150, 40),
          primary: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: borderRadius),
        ),
        child: child,
      ),
    );
  }
}



/* 

 return ButtonStyle(
      textStyle: MaterialStateProperty.all<TextStyle?>(textStyle),
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      overlayColor: overlayColor,
      shadowColor: ButtonStyleButton.allOrNull<Color>(shadowColor),
      elevation: elevationValue,
      padding: ButtonStyleButton.allOrNull<EdgeInsetsGeometry>(padding),
      minimumSize: ButtonStyleButton.allOrNull<Size>(minimumSize),
      fixedSize: ButtonStyleButton.allOrNull<Size>(fixedSize),
      maximumSize: ButtonStyleButton.allOrNull<Size>(maximumSize),
      side: ButtonStyleButton.allOrNull<BorderSide>(side),
      shape: ButtonStyleButton.allOrNull<OutlinedBorder>(shape),
      mouseCursor: mouseCursor,
      visualDensity: visualDensity,
      tapTargetSize: tapTargetSize,
      animationDuration: animationDuration,
      enableFeedback: enableFeedback,
      alignment: alignment,
      splashFactory: splashFactory,
    );
    
     */