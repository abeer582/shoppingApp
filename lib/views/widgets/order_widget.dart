import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../screens/layout/com.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(color: const Color(0xfffff5f5),
      child: Row(
        children: [
          SizedBox(width:MediaQuery.of(context).size.width*0.025 ,),
          Column(
            children: [
              TheHeaderByBlackColor(f: 20,title:  'Multi-Services for Your\nReal Estate Needs',
              ),
    SizedBoxForHeight(h:0.03 ,),
              Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width*0.43,
                      height: MediaQuery.of(context).size.height*0.055,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
                          color: AppColors.primaryColor
                      ),
                      child: Center(child: TheHeaderByWhiteColor(title: 'Order',f: 16,))),
                  SizedBox(width:MediaQuery.of(context).size.width*0.07 ,),


                ],
              ),

            ],),
          const Image(image: AssetImage('assets/image/02 Man Presentation Miniature Building.png'),),

        ],),
    );
  }
}
