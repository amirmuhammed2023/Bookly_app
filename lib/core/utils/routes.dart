import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/bookly_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repoimplement.dart';
import 'package:bookly_app/features/home/presentation/view_models/similar_books_cubit3/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/thestart/presentaions/views/start_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class myroutes {
  static const Khomeview = "/homeview";
  static const Kdetailsview = "/detailsview";
  static const Ksearchview = "/searchview";
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const startview();
      },
    ),
    GoRoute(
      path: Khomeview,
      builder: (BuildContext context, GoRouterState state) {
        return const homeview();
      },
    ),
    GoRoute(
        path: Kdetailsview,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<homerepoimpl>()),
            child: detailsview(
              bookdetail: state.extra as BooklyModel,
            ),
          );
        }),
    GoRoute(
        path: Ksearchview,
        builder: (BuildContext context, GoRouterState state) {
          return searchview();
        }),
  ]);
}
