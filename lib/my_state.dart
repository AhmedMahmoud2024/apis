import 'package:apis/user.dart';

abstract class MyState {}

class MyInitial extends MyState{}

class GetAllUsers extends MyState{
  final List<User> allUsersList ;


  GetAllUsers(this.allUsersList);
}