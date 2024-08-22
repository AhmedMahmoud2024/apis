import 'package:apis/user.dart';
import 'package:apis/web_services.dart';

class MyRepo {
  final WebServices webServices;

  MyRepo(this.webServices);

  Future<List<User>> getAallUsers() async {
    var response = await webServices.getAallUsers();
    return response.map((singleUserDataFromJson) =>
        User.fromJson(singleUserDataFromJson.toJson())).toList();
  }

  Future<User> getUserById(int userId) async {
    var response = await webServices.getUserById(userId);
    return User.fromJson(response.toJson());
  }
}