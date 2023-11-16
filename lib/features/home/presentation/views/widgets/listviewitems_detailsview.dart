import 'package:bookly_app/core/widgets/custom_failure.dart';
import 'package:bookly_app/core/widgets/custom_loading.dart';
import 'package:bookly_app/features/home/presentation/view_models/similar_books_cubit3/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class listviewitemsdetailsview extends StatelessWidget {
  const listviewitemsdetailsview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBookssucceed) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
              child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.similarbooks.length,
              itemBuilder: (context, index) {
               return customitem(
                  bookimage: state.similarbooks[index].volumeInfo.imageLinks?.thumbnail ?? "" ,
                  );
            },
          ),
        );
        } else if (state is SimilarBooksfailure) {
            return customfailure(myerrormessage: state.errormessage) ;
        } else {
            return customloading() ;
        }
       
      },
    );
  }
}
