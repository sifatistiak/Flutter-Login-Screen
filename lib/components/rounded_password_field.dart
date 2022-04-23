import 'package:flutter/material.dart';
import 'package:login/components/text_field.dart';
import 'package:login/constants.dart';

class PasswordInputField extends StatefulWidget {
  final ValueChanged<String> onChange;
  const PasswordInputField({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: widget.onChange,
        obscureText: _isObscure,
        decoration: InputDecoration(
          hintText: "Password",
          icon: const Icon(
            Icons.lock_outline_rounded,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            icon: Icon(
              _isObscure ? Icons.visibility : Icons.visibility_off,
            ),
            color: kPrimaryColor,
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          ),
          border: InputBorder.none,
        ),
        cursorColor: kPrimaryColor,
      ),
    );
  }
}
