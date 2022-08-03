import 'package:auth/Common/colors..dart';
import 'package:auth/Common/dimensions.dart';
import 'package:auth/Common/small_text.dart';
import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  final Color color1;
  final Color color2;
  final Color textColor;
  final Color iconColor;
  final IconData icon;
  const FormButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color1 = AppColors.secondaryYellow,
    this.color2 = AppColors.mainYellow,
    this.textColor = Colors.white,
    this.icon = Icons.home,
    this.iconColor = AppColors.mainBackground,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: rValue(
        context: context,
        defaultValue: 130.0,
        whenSmaller: 120.0,
      ),
      height: rValue(
        context: context,
        defaultValue: 50.0,
        whenSmaller: 40.0,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            color1,
            color2,
          ],
        ),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            )),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SmallText(
              text: text,
              size: rValue(
                context: context,
                defaultValue: 14.0,
                whenSmaller: 12.0,
              ),
              color: textColor,
            ),
            const SizedBox(width: 10.0),
            Icon(
              Icons.arrow_right_alt,
              color: Colors.white,
              size: rValue(
                context: context,
                defaultValue: 20.0,
                whenSmaller: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
