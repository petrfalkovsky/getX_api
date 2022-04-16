import 'package:flutter/material.dart';
import 'package:getx_app/themes/app_theme.dart';

class GradientContainerBase extends StatefulWidget {
  final Widget? child;
  final double? borderRadius;
  final double? width;
  const GradientContainerBase({
    Key? key,
    this.child,
    this.borderRadius,
    this.width,
  }) : super(key: key);

  @override
  _GradientContainerState createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainerBase> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        color: AppConfig.whiteColor,
        gradient: LinearGradient(colors: [
          AppConfig.startPointGradientBase,
          AppConfig.endPointGradientBase
        ]),
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 34),
        boxShadow: [
          BoxShadow(
            color: AppConfig.blackColor.withOpacity(0.2),
            blurRadius: 15,
          ),
        ],
      ),
      child: widget.child,
    );
  }
}
