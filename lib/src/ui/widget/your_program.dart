import 'package:flutter/material.dart';
import 'package:training_app/src/res/colors.dart';

import '../video_info.dart';

class YourProgram extends StatelessWidget {
  const YourProgram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          'Your Program',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.homePageSubtitle,
          ),
        ),
        Expanded(
          child: Container(),
        ),
        Text(
          'Details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.homePageDetail,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return const VideoInfo();
              },
            ),
          ),
          child: Icon(
            Icons.arrow_forward_outlined,
            size: 20,
            color: AppColors.homePageIcons,
          ),
        ),
      ],
    );
  }
}
