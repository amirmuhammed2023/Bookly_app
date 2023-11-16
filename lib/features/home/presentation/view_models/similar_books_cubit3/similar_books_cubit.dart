import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/bookly_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homerepo3) : super(SimilarBooksInitial());
  homerepo homerepo3 ;

  Future<void> fetchsimilarbooksdetails({required String category}) async{
     emit(SimilarBooksloading());
     var result = await homerepo3.fetchsimilarbooks(category: category) ;
      result.fold((failure) => emit(SimilarBooksfailure(failure.errmsg)),
        (responsebooks) => emit(SimilarBookssucceed(responsebooks)));

  }

}
