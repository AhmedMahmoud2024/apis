import 'package:apis/user.dart';
import 'package:apis/web_services.dart';

class MyRepo {
  final WebServices webServices;

  MyRepo(this.webServices);

  Future<List<User>> getAallUsers() async {
    return  await webServices.getAallUsers();

  }

  Future<User> getUserById(int userId) async {
    return await webServices.getUserById(userId);
  }

  Future<User> createNewUser(User newUser) async{
    return await webServices.createNewUser(newUser, 'Bearer 266011b7625eba47bb22d916cc895be80d09523c732855d150f2852347bda0ad') ;
  }

  Future<dynamic> deleteUser(String id ) async{
    return await webServices.deleteUser(id, 'Bearer 266011b7625eba47bb22d916cc895be80d09523c732855d150f2852347bda0ad') ;
  }
}