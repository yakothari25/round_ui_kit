import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:round_ui_kit/constants.dart';
import 'package:round_ui_kit/coustom_linear_progressbar.dart';


class FileDownloadIndicator extends StatelessWidget {
  final bool isDarkmode;
  final String filaname;
  final double value;
  final String iconAsset;
  const FileDownloadIndicator({
    Key key,
    this.isDarkmode = false,
    @required this.filaname,
    @required this.value, this.iconAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double per = (value * 100).floorToDouble();
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 52,
            height: 52,
            padding: EdgeInsets.all(14),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
                border: Border.all(color: Colors.grey[400])),
            child: SvgPicture.asset(
              iconAsset,
              color: isDarkmode ? klighttheameColor : kdarkbackgroundColor,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                  filaname,
                  style: isDarkmode ? kDarkTextStyle : kLightTextStyle,
                ),
              ),
              CoustomProgressBar(
                value: value,
              )
            ],
          ),
          
          Text('$per%', style: isDarkmode ? kDarkTextStyle : kLightTextStyle)
        ],
      ),
    );
  }
}


