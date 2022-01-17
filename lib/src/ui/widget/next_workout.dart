import 'package:flutter/material.dart';
import 'package:training_app/src/res/colors.dart';
import 'package:training_app/src/ui/widget/timer.dart';

class NextWorkout extends StatelessWidget {
  const NextWorkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.gradientFirst.withOpacity(0.8),
            AppColors.gradientSecond.withOpacity(0.9),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(80),
          bottomRight: Radius.circular(10),
          bottomLeft: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(5, 10),
            blurRadius: 10,
            color: AppColors.gradientSecond.withOpacity(0.2),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Next Workout',
              style: TextStyle(
                fontSize: 16,
                color: AppColors.homePageContainerTextSmall,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              'Legs Toning \nand Glotes Workout',
              style: TextStyle(
                fontSize: 25,
                color: AppColors.homePageContainerTextSmall,
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                const Timer(),
                Expanded(
                  child: Container(),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.gradientFirst,
                        blurRadius: 10,
                        offset: const Offset(4, 6),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.play_circle,
                    color: Colors.white,
                    size: 60,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
