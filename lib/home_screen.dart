
import 'package:apis/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_cubit.dart';
import 'my_state.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<User> userList = [] ;
  User user = User() ;
  
 void initState(){
    super.initState() ;
  // BlocProvider.of<MyCubit>(context).emitGetAllUsers();
  //  BlocProvider.of<MyCubit>(context).emitGetUserDetails(2);
     BlocProvider.of<MyCubit>(context).emitCreateNewUser(
       User(
         name: "ali",
         email: "ali@gmail.com",
         gender: "Male",
         status: "Active"
       )
     );
   
 }
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   appBar: AppBar(
     title: Text("Home Screen"),
   ),
   body:Column(
     children:[
       // BlocBuilder<MyCubit,MyState>(
       //   builder:(context,state){
       //     if(state is GetAllUsers){
       //   userList=(state).allUsersList ;
       //   return ListView.builder(
       //     shrinkWrap: true,
       //       padding: EdgeInsets.all(10),
       //       itemCount: userList.length,
       //       itemBuilder: (BuildContext context ,int index){
       //         return Container(
       //           height: 50,
       //           color: Colors.amber,
       //           child: Center(
       //           child: Text(
       //             userList[index].email.toString()
       //           )
       //           ),
       //         );
       //       }
       //   );
       //     }else{
       //       return Center(
       //         child: CircularProgressIndicator(),
       //       );
       //     }
       //   }
       // )
       BlocBuilder<MyCubit,MyState>(
           builder:(context,state){
             if(state is CreateNewUser){
               user=(state).newUser ;
                     return Container(
                       height: 50,
                       color: Colors.amber,
                       child: Center(
                           child: Text(
                               user.email.toString()
                           )
                       ),
                     );
             }else{
               return const Center(
                 child: CircularProgressIndicator(),
               );
             }
           }
       )
     ]
   )
 );
  }
}