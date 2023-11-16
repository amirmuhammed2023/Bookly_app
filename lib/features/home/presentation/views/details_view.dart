import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/bookly_model.dart';
import 'package:bookly_app/features/home/presentation/view_models/similar_books_cubit3/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/button_detailsview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_appbar_detailsview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/listviewitems_detailsview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class detailsview extends StatefulWidget {
  const detailsview({super.key,required this.bookdetail});
  final BooklyModel bookdetail ;

  @override
  State<detailsview> createState() => _detailsviewState();
}

class _detailsviewState extends State<detailsview> {

  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchsimilarbooksdetails(
      category: widget.bookdetail.volumeInfo.categories![0] 
      ) ;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric( horizontal: 20),
                child: Column(
                  children: [
                    appbardetailsview(),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.3,
                      width: MediaQuery.of(context).size.width*0.45,
                      child: customitem(
                        bookimage: widget.bookdetail.volumeInfo.imageLinks?.thumbnail ?? "",
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      widget.bookdetail.volumeInfo.title ?? "Harry potter",
                      style: mystyles.text20,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      widget.bookdetail.volumeInfo.authors?[0]   ,
                      style: mystyles.text16.copyWith(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    customrating(),
                    SizedBox(
                      height: 37,
                    ),
                    buttondetailsview(
                      book: widget.bookdetail,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 44,
                      ),
                    ),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "You can also like",
                          style: mystyles.text14.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    listviewitemsdetailsview(),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
