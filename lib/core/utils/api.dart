import 'package:dio/dio.dart';
class apiservice {
  final  _baseurl = "https://www.googleapis.com/books/v1/" ;
  final Dio dio ;

  apiservice(this.dio);

  Future<Map<String,dynamic>> get({required String endpoint}) async{
   var response =  await dio.get("$_baseurl$endpoint") ;
   return response.data ;
  }

}