import 'package:flutter/material.dart';
import 'package:round_ui_kit/constants.dart';

class CoustomProgressBar extends StatelessWidget {
  final double value;

  const CoustomProgressBar({
    Key key,
    this.value,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*.30,
      child: ClipRRect(

        borderRadius: BorderRadius.all(Radius.circular(15)),
        child: LinearProgressIndicator(
          value: value,
          backgroundColor: Color(0xFF707070).withOpacity(.2),
          valueColor: new AlwaysStoppedAnimation<Color>(Color(0xFF707070)),
        ),
      ),
    );
  }
}
