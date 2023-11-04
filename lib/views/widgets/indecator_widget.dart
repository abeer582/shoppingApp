// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class IndecatorWidget extends StatelessWidget {
  const IndecatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return
     Row(mainAxisAlignment: MainAxisAlignment.center,
       children: [
         SizedBox(width:MediaQuery.of(context).size.width*0.025 ,),

         const smallContainer(),
         SizedBox(width:MediaQuery.of(context).size.width*0.01 ,),

         Container(height: 8,
           width: 34,
       decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
         color: AppColors.primaryColor
       ),),
         SizedBox(width:MediaQuery.of(context).size.width*0.01 ,),

         const smallContainer()
       ],);

  }

}class smallContainer extends StatelessWidget {
  const smallContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 10,
      width: 10,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
          color: const Color(0xffE0E0E0)
      ),);
  }
}

