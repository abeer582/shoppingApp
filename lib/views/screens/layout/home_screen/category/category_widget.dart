// ignore_for_file: must_be_immutable


import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/model/users_model.dart';
import 'package:shopping_app/views/screens/layout/home_screen/category/cubit/cubit.dart';

import '../../../../../utils/constants.dart';
import '../../com.dart';
import 'com.dart';
import 'cubit/states.dart';


class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  List<String>icons=['assets/icon/1.png','assets/icon/2.png','assets/icon/3.png','assets/icon/4.png',
    'assets/icon/5.png'];

  List<String>titles=['Constructions','Insurances','Legal','Buy & Sell','Accounting Services'];
  List<Data>listModel=[];
  @override
  void initState() {
    UsersCubit.get(context).getCategory();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var cubit =UsersCubit.get(context);
    return BlocConsumer<UsersCubit,UsersStates> (listener: (context, state) {
      // TODO: implement listener
    },
        builder: (context, state) {
          return
            ConditionalBuilder(condition:  UsersCubit.get(context).usersModel !=null,
                builder: (context) =>
                    Column(children: [
                      SizedBoxForHeight(h:0.01),
                      const RowForHeadersAtCategory(),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width*0.04,
                            vertical: MediaQuery.of(context).size.height*0.03),
                        height: 304,
                        child: ListView.separated(itemBuilder: (context, index) => Container(
                          height: 60,
                          decoration:  BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors.backGroundColor,width: 0.1)
                          ),
                          child: Row(children: [
                            // ImageIcon(AssetImage(icons[index]),size: 50,color: AppColors.primaryColor,),
                            //   TextForCategory(title: '${cubit.listModel[index].id}', f: 17),

                            TextForCategory(title: cubit.listModel[index].username , f: 17),

                            const Spacer(),
                            const Icon(Icons.arrow_forward_outlined,color: Color(0xffb2acac
                            ),size: 30,)

                          ],),
                        ),
                            separatorBuilder: (context, index) => SizedBoxForHeight(h: 0.02,),
                            itemCount: cubit.listModel.length),
                      )
                    ],)
                , fallback: (context)=>const Center(child: CircularProgressIndicator(),));
        }
    );
  }
}
