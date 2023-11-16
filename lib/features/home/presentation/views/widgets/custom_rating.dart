import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';

class customrating extends StatelessWidget {
  const customrating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: Colors.yellow,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.005,
        ),
        Text(
          "4.8",
          style: mystyles.text16,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.008,
        ),
        Text(
          "(2390)",
          style: mystyles.text14.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
