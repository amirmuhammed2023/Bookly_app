import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/bookly_model.dart';
import 'package:dartz/dartz.dart';

abstract class homerepo {
 Future<Either<failure,List<BooklyModel>>> fetchallbooks() ;
 Future<Either<failure,List<BooklyModel>>> fetchnewsbooks() ;
 Future<Either<failure,List<BooklyModel>>> fetchsimilarbooks({required String category}) ;

}