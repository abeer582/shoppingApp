abstract class UsersStates{}
class InitialState extends UsersStates {}
class UsersLoadingState extends UsersStates {}
class UsersSuccessState extends UsersStates {}
class UsersErrorState extends UsersStates {
  final String e;
  UsersErrorState(this.e);

}