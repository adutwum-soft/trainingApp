import 'package:flutter/material.dart';
import 'package:training_app/src/res/colors.dart';
import 'package:training_app/src/ui/widget/icon_text.dart';

class VideoTimer extends StatelessWidget {
  const VideoTimer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconText(
          icon: Icon(
            Icons.timer,
            size: 20,
            color: AppColors.secondPageTitleColor,
          ),
          title: '68 min',
        ),
        IconText(
          icon: Icon(
            Icons.handyman_outlined,
            size: 20,
            color: AppColors.secondPageTitleColor,
          ),
          title: 'Resistent band, Kettlebell',
        )
      ],
    );
  }
}
