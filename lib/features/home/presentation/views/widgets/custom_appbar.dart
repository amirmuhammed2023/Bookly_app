import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class customappbar extends StatelessWidget {
  const customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          Klogoimage,
          width: 120,
          height: 50,
        ),
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(myroutes.Ksearchview);
            },
            icon: Icon(Icons.search)),
      ],
    );
  }
}
