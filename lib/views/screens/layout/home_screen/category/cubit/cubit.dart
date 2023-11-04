import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/views/screens/layout/home_screen/category/cubit/states.dart';
import 'package:http/http.dart' as http;

import '../../../../../../model/users_model.dart';

class UsersCubit extends Cubit<UsersStates> {
  UsersCubit() : super(InitialState());

  static UsersCubit get(context) => BlocProvider.of(context);

  Future<List<Users>> getUsers() async {
    final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/users'),
    );
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      List<Users> users = [];
      for (var u in jsonResponse) {
        Users user = Users(username: u['username'], id: u['id']);
        users.add(user);
      }
      return users;
    } else {
      throw Exception('Failed to load post');
    }
  }
}
