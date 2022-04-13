import 'package:flutter/material.dart';

class UserProfileBubble extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const UserProfileBubble({
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(80, 5, 18, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            constraints: BoxConstraints(
              minHeight: 43,
              minWidth: 170,
              maxHeight: double.infinity,
              maxWidth: 280,
            ),
            width: width,
            height: height,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 27, 17, 167).withOpacity(0.2),
                  spreadRadius: 0.5,
                  blurRadius: 10,
                  offset: Offset(0, 0),
                )
              ],
              gradient: const LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color.fromRGBO(255, 139, 173, 1),
                    Color.fromRGBO(127, 187, 251, 1),
                  ]),
              borderRadius: borderRadius,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 12, 12, 12),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}

class SecondUserProfileBubble extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const SecondUserProfileBubble({
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
    final borderRadius = this.borderRadius ?? BorderRadius.circular(15);
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 5, 80, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              minHeight: 43,
              minWidth: 170,
              maxHeight: double.infinity,
              maxWidth: 280,
            ),
            width: width,
            height: height,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 27, 17, 167).withOpacity(0.05),
                  spreadRadius: 0.5,
                  blurRadius: 12,
                  offset: Offset(0, 0),
                )
              ],
              color: Colors.white,
              borderRadius: borderRadius,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 12, 12, 12),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}

class SecondHalfUserProfileBubble extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const SecondHalfUserProfileBubble({
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
    final borderRadius = this.borderRadius ??
        BorderRadius.only(
          topRight: Radius.circular(25),
          topLeft: Radius.circular(25),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(25),
        );
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 5, 80, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              minHeight: 43,
              minWidth: 170,
              maxHeight: double.infinity,
              maxWidth: 280,
            ),
            width: width,
            height: height,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 27, 17, 167).withOpacity(0.05),
                  spreadRadius: 0.5,
                  blurRadius: 12,
                  offset: Offset(0, 0),
                )
              ],
              color: Colors.white,
              borderRadius: borderRadius,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(18, 12, 12, 12),
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
