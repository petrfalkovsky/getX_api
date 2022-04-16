import 'package:flutter/material.dart';
import 'package:getx_app/themes/app_theme.dart';

class GradientContainerAddon extends StatefulWidget {
  final Widget? child;
  final double? borderRadius;
  final double? width;
  const GradientContainerAddon({
    Key? key,
    this.child,
    this.borderRadius,
    this.width,
  }) : super(key: key);

  @override
  _GradientContainerAddonState createState() => _GradientContainerAddonState();
}

class _GradientContainerAddonState extends State<GradientContainerAddon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      decoration: BoxDecoration(
        color: AppConfig.whiteColor,
        gradient: LinearGradient(colors: [
          AppConfig.startPointGradientAddon,
          AppConfig.endPointGradientAddon
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
