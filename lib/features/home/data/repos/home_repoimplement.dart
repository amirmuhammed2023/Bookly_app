import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/bookly_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/utils/api.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
 
class homerepoimpl implements homerepo {
  final apiservice apiservice1 ;
  homerepoimpl(this.apiservice1) ;
  @override
  Future<Either<failure, List<BooklyModel>>> fetchallbooks() async{
   try {
    var data = await apiservice1.get(endpoint:"volumes?Filtering=free-ebooks&q=subject:Programming");
    List<BooklyModel> newssbook = [] ;
    for (var item in data['items']) {
        newssbook.add(BooklyModel.fromJson(item));
    }
        return right(newssbook) ;

     } catch (e) {
      if (e is DioException) {
              return left(serverfailure.fromResponse(e.response!.statusCode!, e.response!.data)) ;
      } else {
              return left(serverfailure(e.toString())) ;

      }
    }

   
  }

  @override
  Future<Either<failure,List<BooklyModel>>> fetchnewsbooks() async{
    try {
    var data = await apiservice1.get(endpoint:"volumes?Filtering=free-ebooks&q=Programming&Sorting=newest");
    List<BooklyModel> newssbook = [] ;
    for (var item in data['items']) {
        newssbook.add(BooklyModel.fromJson(item));
    }
        return right(newssbook) ;

     } catch (e) {
      if (e is DioException) {
              return left(serverfailure.fromResponse(e.response!.statusCode!, e.response!.data)) ;
      } else {
              return left(serverfailure(e.toString())) ;

      }
    }
  }

  @override
  Future<Either<failure,List<BooklyModel>>> fetchsimilarbooks({required String category}) async{
    try { 
    var data = await apiservice1.get(endpoint:"volumes?Filtering=free-ebooks&q=Programming&Sorting=relevance");
    List<BooklyModel> newssbook = [] ;
    for (var item in data['items']) {
        newssbook.add(BooklyModel.fromJson(item));
    }
        return right(newssbook) ;

     } catch (e) {
      if (e is DioException) {
              return left(serverfailure.fromResponse(e.response!.statusCode!, e.response!.data)) ;
      } else {
              return left(serverfailure(e.toString())) ;

      }
    }
  }
  }







