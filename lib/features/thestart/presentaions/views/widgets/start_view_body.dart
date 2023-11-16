import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class startviewbody extends StatelessWidget {
  const startviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Klogoimage),
        SizedBox(
          height: 6,
        ),
        Text(
          "Read free books",
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
