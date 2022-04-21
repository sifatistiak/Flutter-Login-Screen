import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function()? onPress;
  final Color? color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    this.onPress,
    this.color = kPrimaryColor,
    this.textColor = kPrimaryTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: ElevatedButton(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
          style: ElevatedButton.styleFrom(
            primary: color,
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 40.0,
            ),
            textStyle: TextStyle(
              color: textColor,
              fontSize: kButtonDefaultFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: onPress,
        ),
      ),
    );
  }
}
