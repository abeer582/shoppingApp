import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../screens/layout/com.dart';
class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        CircleAvatar(maxRadius: 22,
            backgroundColor: AppColors.backGroundColor,
            child:
            Image.asset('assets/image/Frame 3465931.png')),
        SizedBox(width:MediaQuery.of(context).size.width*0.015 ,),
        TheHeaderByBlackColor(title: 'Hey, Ahmed',f: 18,),
        SizedBox(width:MediaQuery.of(context).size.width*0.015 ,),
        CircleAvatar(backgroundColor: AppColors.backGroundColor,
            maxRadius: 17,
            child: Image.asset('assets/image/Image.png')),

      ],),
      SizedBoxForHeight(h:0.02 ,),
      TheHeaderByBlackColor(title:'Multi-Services for Your Real Estate Needs ',f: 21,),
      SizedBoxForHeight(h:0.01 ,),
      TheHeaderByGrayColor(title:  'Explore diverse real estate services for all your needs:\nproperty management, construction, insurance and \nmore in one place.',f: 16.5,)

    ],);
  }
}
