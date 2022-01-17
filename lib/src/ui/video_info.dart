import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:training_app/src/res/colors.dart';
import 'package:training_app/src/ui/widget/video_title.dart';
import 'package:training_app/src/ui/widget/vidoe_time.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  _VideoInfoState createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List vInfo = [];

  @override
  void initState() {
    super.initState();
    _initData();
  }

  _initData() {
    DefaultAssetBundle.of(context)
        .loadString('json/videoinfo.json')
        .then((value) {
      vInfo = json.decode(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 70),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.gradientFirst.withOpacity(0.8),
              AppColors.gradientSecond,
            ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const VideoTitle(),
                  const SizedBox(height: 30),
                  Text(
                    'Legs Toning \nand Glutes Workout',
                    style: TextStyle(
                      fontSize: 25,
                      color: AppColors.secondPageTitleColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 50),
                  const VideoTimer(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  decoration: BoxDecoration(
                    color: AppColors.secondPageTitleColor,
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(70),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      _buildCircuite(),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCircuite() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Circuit 1: Legs Toning',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColors.circuitsColor,
          ),
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.loop,
              size: 30,
              color: AppColors.loopColor,
            ),
            const SizedBox(width: 10),
            Text(
              '3 sets',
              style: TextStyle(
                color: AppColors.setsColor,
                fontSize: 15,
              ),
            ),
            const SizedBox(width: 10),
          ],
        )
      ],
    );
  }
}
