import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VoiceDarkBubble extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final Gradient gradient;

  const VoiceDarkBubble({
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
      padding: const EdgeInsets.fromLTRB(0, 5, 18, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            constraints: BoxConstraints(
              minHeight: 44.h,
              minWidth: 223.w,
              maxHeight: 44.h,
              maxWidth: 223.w,
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
            child: Stack(
              children: [
                Positioned(
                  left: 61,
                  top: 11,
                  child: Container(
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      color: Colors.white,
                    ),
                    width: 19,
                    height: 19,
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 9.5,
                  child: Image.asset(
                    'assets/icons/play.png',
                    width: 19,
                  ),
                ),
                Positioned(
                  left: 43,
                  top: 17.5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      // shape: CircleBorder(),
                      color: Colors.white,
                    ),
                    width: 29,
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
                      color: Colors.white.withOpacity(0.4),
                    ),
                    width: 159,
                    height: 5,
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

class VoiceLightBubble extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final Gradient gradient;

  const VoiceLightBubble({
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
      padding: const EdgeInsets.fromLTRB(18, 5, 18, 5),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            constraints: BoxConstraints(
              minHeight: 44.h,
              minWidth: 223.w,
              maxHeight: 44.h,
              maxWidth: 223.w,
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
              color: Colors.white,
              borderRadius: borderRadius,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 16,
                  top: 9.5,
                  child: Image.asset(
                    'assets/icons/pause.png',
                    width: 19,
                  ),
                ),
                Positioned(
                  left: 43,
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
                    width: 29,
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
                    width: 159,
                    height: 5,
                  ),
                ),
                //шарик
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
