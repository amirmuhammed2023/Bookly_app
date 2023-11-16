import 'package:bookly_app/features/search/presentation/views/widgets/custom_listviewsearch.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/styles.dart';

class searchview extends StatelessWidget {
  const searchview({super.key,});
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customtextfield(),
              SizedBox(
                height: 25,
              ),
              Text(
                "Search result",
                style: mystyles.text18,
              ),
              SizedBox(height: 15),
              customlistviewsearch(),
            ],
          )),
    ));
  }
}
