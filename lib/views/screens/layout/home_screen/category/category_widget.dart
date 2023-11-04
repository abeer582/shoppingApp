// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/model/users_model.dart';
import 'package:shopping_app/views/screens/layout/home_screen/category/cubit/cubit.dart';
import 'package:shopping_app/views/screens/layout/home_screen/category/cubit/states.dart';
import '../../../../../utils/constants.dart';
import '../../com.dart';
import 'com.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  late Future<List<Users>> users;

  @override
  void initState() {
    users = UsersCubit.get(context).getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UsersCubit, UsersStates>(
        listener: (context, state) {},
        builder: (context, state) => FutureBuilder<List<Users>>(
            future: users,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    SizedBoxForHeight(h: 0.01),
                    const RowForHeadersAtCategory(),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width * 0.04,
                          vertical: MediaQuery.of(context).size.height * 0.03),
                      height: 380,
                      child: ListView.separated(
                          itemBuilder: (context, index) => Container(
                            height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: AppColors.backGroundColor,
                                        width: 0.1)),
                                child: Row(
                                  children: [
                                    TextForCategory(
                                        title:
                                            snapshot.data![index].id.toString(),
                                        f: 17),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.03),
                                    TextForCategory(
                                        title: snapshot.data![index].username
                                            .toString(),
                                        f: 17),
                                    const Spacer(),
                                    const Icon(
                                      Icons.arrow_forward_outlined,
                                      color: Color(0xffb2acac),
                                      size: 30,
                                    )
                                  ],
                                ),
                              ),
                          separatorBuilder: (context, index) =>
                              SizedBoxForHeight(
                                h: 0.02,
                              ),
                          itemCount: snapshot.data!.length),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else {
                return const CircularProgressIndicator();
              }
            }));
  }
}
