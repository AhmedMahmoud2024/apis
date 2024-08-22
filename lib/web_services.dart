import 'package:apis/user.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'web_services.g.dart';


@RestApi(baseUrl:"https://gorest.co.in/public/v2/")
abstract class WebServices{

  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

 @GET('users')
  Future<List<User>> getAallUsers();
}

Dio createAndSetupDio(){
  Dio dio = Dio() ;
  dio
    ..options.connectTimeout = 100 * 1000
    ..options.receiveTimeout = 100 * 1000 ;

  dio.interceptors.add(LogInterceptor(
    responseBody: true,
    error: true ,
    requestHeader: true,
    request: true,
    requestBody: true,

  ));
  return dio ;
}