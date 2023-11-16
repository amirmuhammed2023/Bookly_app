import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/bookly_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homerepo2) : super(NewestBooksInitial());

  homerepo homerepo2;
  Future<void> fetchnewestbooks() async {
    emit(NewestBooksloading());
    var result = await homerepo2.fetchnewsbooks();
    result.fold((failure) => emit(NewestBooksfailure(failure.errmsg)),
        (responsebooks) => emit(NewestBookssucceed(responsebooks)));
  }
}
