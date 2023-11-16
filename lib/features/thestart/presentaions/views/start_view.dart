import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/features/thestart/presentaions/views/widgets/start_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class startview extends StatefulWidget {
  const startview({super.key});

  @override
  State<startview> createState() => _startviewState();
}

class _startviewState extends State<startview> {
  @override
  void initState() {
    changestartedpage();
    super.initState();
  }

  Future<dynamic> changestartedpage() {
    return Future.delayed(
      Duration(seconds: 4),
      () {
        GoRouter.of(context).push(myroutes.Khomeview);
        //Get.to(() => homeview() , transition: Transition.leftToRightWithFade , duration: Duration(seconds: 1)) ;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: startviewbody());
  }
}
