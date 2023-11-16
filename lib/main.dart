import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/routes.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repoimplement.dart';
import 'package:bookly_app/features/home/presentation/view_models/all_books_cubit1/all_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_models/newest_books_cubit2/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupgetit();
  runApp(
    const bookly(),
  );
}

class bookly extends StatelessWidget {
  const bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return  
     MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AllBooksCubit(
            getIt.get<homerepoimpl>()
          )..fetchallbooks(),
        ),
        BlocProvider(
          create: (context) =>  NewestBooksCubit(
            getIt.get<homerepoimpl>()
          )..fetchnewestbooks(),
        ),
      ],
       child: MaterialApp.router(
        routerConfig: myroutes.router,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kmaincolor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        debugShowCheckedModeBanner: false,
         ),
     );
      
   
  }
}
 