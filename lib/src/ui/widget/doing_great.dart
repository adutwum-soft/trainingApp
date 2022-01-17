import 'package:flutter/material.dart';
import 'package:training_app/src/res/colors.dart';

class DoingGreat extends StatelessWidget {
  DoingGreat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 30),
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 40,
                  offset: const Offset(8, 10),
                  color: AppColors.gradientSecond.withOpacity(0.3),
                ),
                BoxShadow(
                  blurRadius: 10,
                  offset: const Offset(-1, -5),
                  color: AppColors.gradientSecond.withOpacity(0.3),
                )
              ],
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('assets/images/card.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(right: 200, bottom: 30),
            decoration: BoxDecoration(
              // color: Colors.redAccent.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('assets/images/figure.png'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 150, top: 50),
            width: double.maxFinite,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'You are doing great',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.homePageDetail),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    text: 'Keep it up\n',
                    style: TextStyle(
                      color: AppColors.homePagePlanColor,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: 'stick to your plan',
                        style: style16,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextStyle style16 = TextStyle(
    color: AppColors.homePagePlanColor,
    fontSize: 16,
  );
}
