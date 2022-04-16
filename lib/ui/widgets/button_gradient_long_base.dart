import 'package:flutter/material.dart';
import 'package:getx_app/ui/widgets/gradient_container_base.dart';

class GragientLongButtonBase extends StatelessWidget {
  final BorderRadiusGeometry? borderRadius;
  final double? width;
  final double? height;
  final Gradient? gradient;
  final VoidCallback? onPressed;
  final Widget child;

  const GragientLongButtonBase({
    Key? key,
    this.borderRadius,
    this.width,
    this.height,
    this.gradient /*  = const LinearGradient(colors: [
      AppConfig.startPointGradientBase,
      AppConfig.endPointGradientBase
    ]) */
    ,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = this.borderRadius ?? BorderRadius.circular(50);
    return GradientContainerBase(
      width: width,
      child: ConstrainedBox(
        constraints:
            const BoxConstraints(minWidth: double.infinity, minHeight: 40),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onSurface: Colors.transparent,
            side: BorderSide(color: Colors.white.withOpacity(0), width: 0),
            elevation: 0,
            shadowColor: Color.fromARGB(255, 44, 39, 41),
            primary: Colors.transparent,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
          ),
          child: child,
        ),
      ),
    );
  }
}
