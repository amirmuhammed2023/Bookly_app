import 'package:bookly_app/features/home/data/models/bookly_model/bookly_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class buttondetailsview extends StatelessWidget {
  const buttondetailsview({super.key,
  required this.book
  });
  final BooklyModel book ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
              child: custombutton(
            textcolor: Colors.white,
            backgroundColor: Colors.black,
            text: "Free",
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          )),
          Expanded(
              child: custombutton(
            textcolor: Colors.white,
            backgroundColor: Color(0xffEF8262),
            text: "Preview Link",
            onPressed: () async {
              final Uri url = Uri.parse(book.volumeInfo.previewLink! );
               if (await canLaunchUrl(url)) {
                  await launchUrl(url) ;
               }
            },
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          )),
        ],
      ),
    );
  }
}
