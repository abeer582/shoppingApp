import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/views/screens/layout/home_screen/category/cubit/states.dart';

import '../../../../../../model/users_model.dart';
import '../../../../../../remote/network.dart';


class UsersCubit extends Cubit<UsersStates> {
  UsersCubit() :super(InitialState());

  static UsersCubit get(context) => BlocProvider.of(context);
  Data usersModel = Data.fromJson({});
  List<Data>listModel=[];



  void getCategory() async {
    //   try {
    Response response = await DioHelper.getData(
        url: "https://jsonplaceholder.typicode.com/users");
// Check if the request was successful
    if (response.statusCode == 200) {
      // Retrieve the list from the response
      List<dynamic> dataList = response.data;
      for (var item in dataList) {

        // Perform operations on each item in the list
        print(item.toString());
      }
    } else {
      // Handle error response
      print('Request failed with status code ${response.statusCode}');

    }
  }
}
