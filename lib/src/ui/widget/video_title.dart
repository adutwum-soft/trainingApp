import 'package:flutter/material.dart';
import 'package:training_app/src/res/colors.dart';

class VideoTitle extends StatelessWidget {
  const VideoTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InkWell(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: AppColors.secondPageTitleColor,
          ),
        ),
        Expanded(child: Container()),
        Icon(
          Icons.info_outlined,
          size: 20,
          color: AppColors.secondPageTitleColor,
        ),
      ],
    );
  }
}
