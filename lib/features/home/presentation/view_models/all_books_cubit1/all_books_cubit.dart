import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/bookly_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'all_books_state.dart';

class AllBooksCubit extends Cubit<AllBooksState> {
  AllBooksCubit(this.homerepo1) : super(AllBooksInitial());

  final homerepo homerepo1;

  Future<void> fetchallbooks() async {
    emit(AllBooksloading());
    var result = await homerepo1.fetchallbooks();

    result.fold((failure) => emit(AllBooksfailure(failure.errmsg)),
        (responsebooks) => emit(AllBookssucceed(responsebooks)));
  }
}
