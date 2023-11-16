import 'package:flutter/material.dart';

class customtextfield extends StatelessWidget {
  const customtextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.grey,
            )),
        enabledBorder: outlineborder(),
        focusedBorder: outlineborder(),
      ),
    );
  }
}

OutlineInputBorder outlineborder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.white));
}
