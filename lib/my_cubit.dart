import 'package:apis/my_repo.dart';
import 'package:apis/my_state.dart';
import 'package:apis/user.dart';
import 'package:bloc/bloc.dart';
class MyCubit extends Cubit<MyState>{
  final MyRepo myRepo ;
  MyCubit(this.myRepo) : super(MyInitial()) ;

  void emitGetAllUsers(){
    myRepo.getAallUsers().then(
            (usersList) {
              emit(GetAllUsers(usersList));
            }
    );
  }

  void emitGetUserDetails(int userId){
    myRepo.getUserById(userId).then(
            (userDetails) {
          emit(GetUserDetails(userDetails));
        }
    );
  }

  void emitCreateNewUser(User newUser){
    myRepo.createNewUser(newUser).then(
            (newUser) {
          emit(CreateNewUser(newUser));
        }
    );
  }

  void emitDeleteUser(String id){
    myRepo.deleteUser(id).then(
            (data) {
          emit(DeleteUser(data));
        }
    );
  }
}