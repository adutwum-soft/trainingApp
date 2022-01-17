import 'package:flutter/material.dart';
import 'package:training_app/src/res/colors.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.timer,
          color: AppColors.homePageContainerTextSmall,
          size: 20,
        ),
        const SizedBox(width: 10),
        Text(
          '60 min',
          style: TextStyle(
            fontSize: 14,
            color: AppColors.homePageContainerTextSmall,
          ),
        ),
      ],
    );
  }
}
