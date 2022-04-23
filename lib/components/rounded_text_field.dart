import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login/components/text_field.dart';
import 'package:login/constants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final Icon icon;
  final ValueChanged<String> onChange;

  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: TextEditingController()..text = "01",
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: icon,
          hintText: hintText,
          border: InputBorder.none,
          counterText: "",
        ),
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        keyboardType: TextInputType.number,
        maxLength: 11,
        onChanged: onChange,
      ),
    );
  }
}
