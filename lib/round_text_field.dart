import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'constants.dart';

class RoundTextField extends StatelessWidget {
  final String hintText, text, lableText;
  final bool obscureText, enabled, showcursor;
  final Function onChanged;
  final TextInputType textInputType;
  final int maxLength;
  final int maxlines;
  final TextInputAction textInputAction;
  final Color textColor;
  final String error;
  final Function onEditComplete;
  final List<TextInputFormatter> textInputFormatter;
  final bool isdarkmode;
  final double width;
  const RoundTextField({
    Key key,
    this.hintText = "Hint",
    this.text,
    this.obscureText,
    this.enabled,
    this.onChanged,
    this.textInputType,
    this.maxLength,
    this.maxlines = 1,
    this.textInputAction,
    this.textColor,
    this.error,
    this.onEditComplete,
    this.textInputFormatter,
    this.showcursor = true,
    this.isdarkmode = false,
    this.lableText,
    this.width,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller =
        text != null ? TextEditingController(text: text) : null;
    if (_controller != null) {
      _controller.selection = TextSelection.fromPosition(
          TextPosition(offset: _controller.text.length));
    }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
      ),
      width: width,
      decoration: BoxDecoration(
        color: isdarkmode ? kDarktextfieldBackground : kLighttextfieldBackground,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        showCursor: showcursor,
        onSubmitted: onEditComplete,
        maxLines: maxlines,
        style: isdarkmode ? kDarkTextStyle : kLightTextStyle,
        keyboardType: textInputType,
        obscureText: obscureText == null ? false : obscureText,
        maxLength: maxLength != null ? maxLength : null,
        onChanged: onChanged,
        enabled: enabled != null ? enabled : true,
        inputFormatters: textInputFormatter,
        controller: _controller != null ? _controller : null,
        textInputAction:
            textInputAction != null ? textInputAction : TextInputAction.done,
        decoration: InputDecoration(
            counterText: '',
            errorText: error,
            labelStyle: isdarkmode ? kDarkHintTextStyle : kLightHintTextStyle,
            labelText: lableText,
            hintText: hintText,
            hintStyle: isdarkmode ? kDarkHintTextStyle : kLightHintTextStyle,
            border: InputBorder.none),
      ),
    );
  }
}
