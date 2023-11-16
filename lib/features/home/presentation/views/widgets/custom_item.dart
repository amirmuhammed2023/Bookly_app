import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class customitem extends StatelessWidget {
  const customitem({super.key,required this.bookimage});
  final String bookimage ;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child:
        ClipRRect(
          borderRadius:BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: 2.9/4,
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl: bookimage,
              errorWidget: (context, url, error) => const Icon(Icons.error),
               ),
          ),
        ),
    );
  }
}
