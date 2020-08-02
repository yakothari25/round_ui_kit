import 'package:flutter/material.dart';
import 'constants.dart';

class CoustomContainer extends StatelessWidget {
  final Widget child;
  final bool isDarkmode;
  final AlignmentGeometry alignment;
  final EdgeInsetsGeometry padding;
  final Color color;
  final Decoration decoration;
  final Decoration foregroundDecoration;
  final BoxConstraints constraints;
  final EdgeInsetsGeometry margin;
  final Matrix4 transform;
  final Clip clipBehavior;
  const CoustomContainer({
    Key key,
    this.child,
    this.isDarkmode = false,
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.constraints,
    this.margin,
    this.transform,
    this.clipBehavior,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      padding: padding,
      foregroundDecoration: foregroundDecoration,
      constraints: constraints,
      margin: margin,
      transform: transform,
      clipBehavior: clipBehavior == null ? Clip.none : clipBehavior,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: isDarkmode ? kdarkbackgroundColor : klightbackgroundColor,
      ),
      child: child,
    );
  }
}
