import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class customfailure extends StatelessWidget {
  const customfailure({super.key,required this.myerrormessage});
  final String myerrormessage ;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(myerrormessage,style:mystyles.text16,),
    );
  }
}