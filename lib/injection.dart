import 'package:apis/my_cubit.dart';
import 'package:apis/my_repo.dart';
import 'package:apis/web_services.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance ;

void initGetIt(){
 getIt.registerLazySingleton<MyCubit>(() =>MyCubit(getIt())) ;
 getIt.registerLazySingleton<MyRepo>(() =>MyRepo(getIt())) ;
 getIt.registerLazySingleton<WebServices>(() =>WebServices(createAndSetupDio())) ;

}