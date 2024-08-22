import 'package:apis/my_repo.dart';
import 'package:apis/my_state.dart';
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
}