import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProcentMatchGradientWidget extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double height;
  final Gradient gradient;
  final VoidCallback? onPressed;
  final Widget childText;
  final Widget childProcents;

  const ProcentMatchGradientWidget({
    Key? key,
    this.borderRadius,
    this.width,
    this.height = 40.0,
    this.gradient = const LinearGradient(colors: [Colors.cyan, Colors.indigo]),
    required this.onPressed,
    required this.childText,
    required this.childProcents,
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
        child: Center(
            child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: SizedBox(
                width: 120.w,
                child: childText,
              ),
            ),
            Spacer(),
            Spacer(),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    // shape: CircleBorder(),
                    color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.4),
                  ),
                  width: 130,
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    // shape: CircleBorder(),
                    color: Color.fromARGB(255, 255, 255, 255).withOpacity(1),
                  ),
                  width: 60,
                  height: 5,
                ),
              ],
            ),
            SizedBox(width: 2.w),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: childProcents,
            )
          ],
        )));
  }
}
