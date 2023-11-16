import 'package:bookly_app/core/widgets/custom_failure.dart';
import 'package:bookly_app/core/widgets/custom_loading.dart';
import 'package:bookly_app/features/home/presentation/view_models/newest_books_cubit2/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_booksitems.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class customlistviewsearch extends StatelessWidget {
  const customlistviewsearch({super.key,});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBookssucceed) {
          return  Expanded(
          child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: state.newestbooks.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: custombooksitems(
              bookinformation: state.newestbooks[index],
            ),
          );
        },
       )
      );
        } else if (state is NewestBooksfailure){
          return customfailure(myerrormessage: state.errormessage) ;
        }else {
         return customloading() ;
        }
        
      },
    );
  }
}
