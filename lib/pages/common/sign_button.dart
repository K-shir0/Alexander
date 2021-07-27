import 'package:alexander/pages/theme/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  final String buttonLabel;
  final Function()? onPressed;

  const SignButton({Key? key, required this.buttonLabel, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 72,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Palette.signButtonColor,
        ),
        child: Text(
          buttonLabel,
          style: const TextStyle(
            fontSize: 28,
            color: Color(0xffeff6f7),
            letterSpacing: 5.6000000000000005,
            fontWeight: FontWeight.w700,
            height: 2.3214285714285716,
          ),
        ),
      ),
    );
  }
}
