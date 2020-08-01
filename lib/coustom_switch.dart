import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  @required
  final bool value;
  @required
  final double width;
  @required
  final double height;
  final ValueChanged<bool> onChanged;
  final Color activeBackgroundColor;
  final Color inactiveBackgroundColor;
  final Gradient activeBackgroundGradiant;
  final Gradient inactiveBackgroundGradiant;
  final Color activeColor;
  final Color inactiveColor;
  final Gradient activeGradiant;
  final Gradient inactiveGradiant;
  const CustomSwitch({
    Key key,
    this.value,
    this.onChanged,
    this.activeBackgroundColor,
    this.inactiveBackgroundColor = Colors.grey,
    this.width = 70,
    this.height = 35,
    this.activeBackgroundGradiant,
    this.inactiveBackgroundGradiant,
    this.activeColor,
    this.inactiveColor,
    this.activeGradiant,
    this.inactiveGradiant,
  }) : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  Animation _circleAnimation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            if (_animationController.isCompleted) {
              _animationController.reverse();
            } else {
              _animationController.forward();
            }
            widget.value == false
                ? widget.onChanged(true)
                : widget.onChanged(false);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            alignment: _circleAnimation.value,
            width: widget.width,
            height: widget.height,
            decoration: widget.value
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(widget.height / 2),
                    color: widget.activeBackgroundColor,
                    gradient: widget.activeBackgroundGradiant)
                : BoxDecoration(
                    borderRadius: BorderRadius.circular(widget.height / 2),
                    color: widget.inactiveBackgroundColor,
                    gradient: widget.inactiveBackgroundGradiant,
                  ),
            child: Container(
              width: widget.height - 4,
              height: widget.height - 4,
              decoration: widget.value
                  ? BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.activeColor,
                      gradient: widget.activeGradiant)
                  : BoxDecoration(
                      shape: BoxShape.circle,
                      color: widget.inactiveColor,
                      gradient: widget.inactiveGradiant,
                    ),
            ),
          ),
        );
      },
    );
  }
}
