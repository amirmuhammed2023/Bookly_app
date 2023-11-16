import 'package:bookly_app/core/utils/api.dart';
import 'package:bookly_app/features/home/data/repos/home_repoimplement.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupgetit(){
    getIt.registerSingleton<apiservice>(apiservice(Dio()));
    getIt.registerSingleton<homerepoimpl>(homerepoimpl(getIt.get<apiservice>()));
}