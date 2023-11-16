import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class appbardetailsview extends StatelessWidget {
  const appbardetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: (){
            GoRouter.of(context).pop() ;
          }, 
          icon: const Icon(Icons.close)
          ), 
        const Icon(Icons.add_shopping_cart)
        ],
    );
  }
}
