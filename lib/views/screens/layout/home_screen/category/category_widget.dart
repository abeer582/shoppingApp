// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../../../utils/constants.dart';
import '../../com.dart';
import 'com.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key});

  List<String> icons = [
    'assets/icon/1.png',
    'assets/icon/2.png',
    'assets/icon/3.png',
    'assets/icon/4.png',
    'assets/icon/5.png'
  ];

  List<String> titles = [
    'Constructions',
    'Insurances',
    'Legal',
    'Buy & Sell',
    'Accounting Services'
  ];

  @override
  Widget build(BuildContext context) {
   return             Column(children: [
     SizedBoxForHeight(h:0.01),
     const RowForHeadersAtCategory(),
     Container(
       padding: EdgeInsets.symmetric(horizontal:  MediaQuery.of(context).size.width*0.04,
           vertical: MediaQuery.of(context).size.height*0.03),
       height: 380,
       child: ListView.separated(
           physics: const NeverScrollableScrollPhysics(),

           itemBuilder: (context, index) => Container(
         decoration:  BoxDecoration(
             color: Colors.white,
             borderRadius: BorderRadius.circular(8),
             border: Border.all(color: AppColors.backGroundColor,width: 0.1)
         ),
         child: Row(children: [
           ImageIcon(AssetImage(icons[index]),size: 50,color: AppColors.primaryColor,),

           TextForCategory(title: titles[index] , f: 17),

           const Spacer(),
           const Icon(Icons.arrow_forward_outlined,color: Color(0xffb2acac
           ),size: 30,)

         ],),
       ),
           separatorBuilder: (context, index) => SizedBoxForHeight(h: 0.02,),
           itemCount: 5),
     ),
   ],);



  }
}
