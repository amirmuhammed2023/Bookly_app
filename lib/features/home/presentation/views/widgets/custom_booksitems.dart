import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/bookly_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly_app/core/utils/styles.dart';

class custombooksitems extends StatelessWidget {
  const custombooksitems({super.key,required this.bookinformation});
  final BooklyModel bookinformation ;  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(myroutes.Kdetailsview,extra:bookinformation );
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.8 / 4,
              child:
                 ClipRRect(
                    borderRadius:BorderRadius.circular(8),
                    child:CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl: bookinformation.volumeInfo.imageLinks?.thumbnail ?? ""   ,
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                 )
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.06,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.55,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bookinformation.volumeInfo.title ?? "" ,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: mystyles.text20,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.003,
                  ),
                  Text(
                    bookinformation.volumeInfo.authors?[0]  ,
                    style: mystyles.text14.copyWith(color: Colors.grey),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.003,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Free",
                        style: mystyles.text18,
                      ),
                      customrating(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
