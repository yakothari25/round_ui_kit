library round_ui_kit;

import 'package:flutter/material.dart';
import 'constants.dart';

class CoustomButton extends StatefulWidget {
  final String text;
  final Function onPressed;
  final Function onLongPress;
  final Function onHighlightChanged;
  final Color color;
  final double width;
  final double height;
  final Gradient backgroundgradient;
  final double fontSize;
  final TextStyle textStyle;
  final double borderRadius;
  const CoustomButton({
    Key key,
    this.text,
    this.onPressed,
    this.onLongPress,
    this.onHighlightChanged,
    this.width = 144,
    this.height = 56,
    this.backgroundgradient,
    this.fontSize,
    this.color,
    this.textStyle = kButtonTextStyle,

    this.borderRadius = 16,
  }) : super(key: key);
  @override
  _CoustomButtonState createState() => _CoustomButtonState();
}

class _CoustomButtonState extends State<CoustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: 56,
      decoration: BoxDecoration(
        color: widget.color,
        gradient: widget.backgroundgradient,
        borderRadius: BorderRadius.all(Radius.circular(widget.borderRadius)),
        boxShadow: [
          BoxShadow(
            color: kbuttonShadow.withOpacity(0.2),
            offset: Offset(0, 15),
            blurRadius: 30,
          )
        ],
      ),
      child: FlatButton(
        onPressed: widget.onPressed,
        child: Text(
          widget.text,
          style: widget.textStyle,
        ),
        onLongPress: widget.onLongPress,
        onHighlightChanged: widget.onHighlightChanged,
      ),
    );
  }
}


