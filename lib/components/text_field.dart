import 'package:flutter/material.dart';
import 'package:login/constants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 5.0,
      ),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}
