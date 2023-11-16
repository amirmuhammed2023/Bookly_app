import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/core/widgets/custom_failure.dart';
import 'package:bookly_app/core/widgets/custom_loading.dart';
import 'package:bookly_app/features/home/presentation/view_models/all_books_cubit1/all_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';


class customlistviewitems extends StatelessWidget {
  const customlistviewitems({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllBooksCubit, AllBooksState>(
      builder: (context, state) { 
        if (state is AllBookssucceed) {
           return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
            return GestureDetector(
              onTap:(){
                GoRouter.of(context).push(myroutes.Kdetailsview,extra:state.books[index] ) ;
              },
              child: customitem(
                bookimage:state.books[index].volumeInfo.imageLinks?.thumbnail ?? "",
              ),
            );
            },
           ),
          );
        } else if (state is AllBooksfailure) {
          return customfailure(myerrormessage: state.errormessage) ;
        } else {
          return const customloading() ;
        }
       
      }
    );
  }
}
