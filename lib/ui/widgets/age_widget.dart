import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AgeSetWidget extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final Gradient gradient;

  const AgeSetWidget({
    Key? key,
    this.borderRadius,
    this.width,
    this.height,
    this.gradient = const LinearGradient(colors: [Colors.cyan, Colors.indigo]),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(25);
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 18, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              minHeight: 44.h,
              minWidth: 223.w,
              maxHeight: 44.h,
              maxWidth: 320.w,
            ),
            width: width,
            height: height,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 168, 164, 216).withOpacity(0.2),
                  spreadRadius: 0.5,
                  blurRadius: 10,
                  offset: Offset(0, 0),
                )
              ],
              color: Colors.white,
              borderRadius: borderRadius,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 30,
                  top: 17.5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(127, 187, 251, 1),
                            Color.fromRGBO(255, 139, 173, 1),
                          ]),
                    ),
                    width: 50,
                    height: 5,
                  ),
                ),
                Positioned(
                  left: 58,
                  top: 17.5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      // shape: CircleBorder(),
                      color:
                          Color.fromARGB(255, 141, 141, 141).withOpacity(0.4),
                    ),
                    width: 250,
                    height: 5,
                  ),
                ),
                //второй шарик
                Positioned(
                  left: 61,
                  top: 11,
                  child: Container(
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(127, 187, 251, 1),
                            Color.fromRGBO(255, 139, 173, 1),
                          ]),
                    ),
                    width: 19,
                    height: 19,
                  ),
                ),
// первый шарик
                Positioned(
                  left: 16,
                  top: 11,
                  child: Container(
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(127, 187, 251, 1),
                            Color.fromRGBO(255, 139, 173, 1),
                          ]),
                    ),
                    width: 19,
                    height: 19,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
