import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/Screens/Login/components/background.dart';
import 'package:login/components/rounded_text_field.dart';
import 'package:login/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "LOGIN",
            style: TextStyle(
              fontSize: kPrimaryHeaderSize * 0.7,
            ),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          SvgPicture.asset(
            "assets/icons/login.svg",
            height: size.height * 0.3,
          ),
          RoundedInputField(
            hintText: "01XXXXXXXXX",
            icon: const Icon(
              Icons.mobile_friendly_rounded,
              color: kPrimaryColor,
            ),
            onChange: (value) {
              print(value);
            },
          ),
        ],
      ),
    );
  }
}
