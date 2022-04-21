import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login/Screens/Login/login_screen.dart';
import 'package:login/Screens/Welcome/components/background.dart';
import 'package:login/components/rounded_button.dart';
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
            "Welcome To AuthMe!",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: kPrimaryHeaderSize,
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/chat.svg",
            height: size.height * 0.45,
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
          RoundedButton(
            text: "login".toUpperCase(),
            onPress: () {
              //Redirect to Login View
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ),
              );
            },
            textColor: Colors.white,
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          RoundedButton(
            text: "register".toUpperCase(),
            color: kPrimaryLightColor,
            onPress: () {},
          ),
        ],
      ),
    );
  }
}
