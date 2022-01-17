import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:training_app/src/res/colors.dart';
import 'package:training_app/src/ui/widget/doing_great.dart';
import 'package:training_app/src/ui/widget/home_title.dart';
import 'package:training_app/src/ui/widget/next_workout.dart';
import 'package:training_app/src/ui/widget/your_program.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List info = [];

  @override
  void initState() {
    super.initState();
    _initData();
  }

  _initData() {
    DefaultAssetBundle.of(context).loadString('json/info.json').then((value) {
      info = json.decode(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const HomeTitle(),
            const SizedBox(height: 30),
            const YourProgram(),
            const SizedBox(height: 20),
            const NextWorkout(),
            const SizedBox(height: 5),
            DoingGreat(),
            const SizedBox(height: 20),
            Text(
              'Are of of focus',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
                color: AppColors.homePageTitle,
              ),
            ),
            _buildAreaFocus(context)
          ],
        ),
      ),
    );
  }

  Widget _buildAreaFocus(BuildContext context) {
    print(info.length);
    return Expanded(
      child: OverflowBox(
        maxWidth: MediaQuery.of(context).size.width,
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
            itemCount: info.length.toDouble() ~/ 2,
            itemBuilder: (BuildContext ctx, int index) {
              int a = 2 * index; // 0,
              int b = 2 * index + 1; // 1
              return Row(
                children: <Widget>[
                  _buildAreaContainer(a),
                  _buildAreaContainer(b),
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildAreaContainer(int index) {
    return Container(
      margin: const EdgeInsets.only(left: 20, bottom: 10, top: 15),
      height: 170,
      width: (MediaQuery.of(context).size.width - 60) / 2,
      padding: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(info[index]['img']),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            offset: const Offset(5, 5),
            color: AppColors.gradientSecond.withOpacity(0.1),
          ),
          BoxShadow(
            blurRadius: 3,
            offset: const Offset(-5, -5),
            color: AppColors.gradientSecond.withOpacity(0.1),
          ),
        ],
      ),
      child: Center(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            info[index]['title'],
            style: TextStyle(
              fontSize: 20,
              color: AppColors.homePageDetail,
            ),
          ),
        ),
      ),
    );
  }
}
