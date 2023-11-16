import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';

class custombutton extends StatelessWidget {
  const custombutton(
      {required this.textcolor,
      required this.backgroundColor,
      required this.text,
      required this.borderRadius,
      this.onPressed ,
      super.key});
  final Color backgroundColor;
  final Color textcolor;
  final String text;
  final BorderRadius borderRadius;
  final void Function()? onPressed ;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed ,
        style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius,
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            text,
            style: mystyles.text16.copyWith(color: textcolor),
          ),
        ));
  }
}
