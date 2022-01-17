import 'package:flutter/material.dart';
import 'package:training_app/src/res/colors.dart';

class IconText extends StatelessWidget {
  final Icon icon;
  final String title;
  const IconText({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [
            AppColors.secondPageContainerGradient1stColor,
            AppColors.secondPageContainerGradient2ndColor,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon,
          const SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: AppColors.secondPageTitleColor,
            ),
          ),
        ],
      ),
    );
  }
}
