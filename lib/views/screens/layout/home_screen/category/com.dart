import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../utils/constants.dart';
import '../../com.dart';

class RowForHeadersAtCategory extends StatelessWidget {
  const RowForHeadersAtCategory({super.key});


  @override
  Widget build(BuildContext context) {
    return       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        Text('Categories View' ,style: GoogleFonts.outfit(

            fontSize:14 ,fontWeight: FontWeight.w400,color: AppColors.blackColor,
            textStyle: const TextStyle(inherit: false))),




        Text('see all' ,style: GoogleFonts.outfit(
            decoration: TextDecoration.underline,

            fontSize:14 ,fontWeight: FontWeight.w300,color: const Color((0xff8c8c8c)),
            textStyle:  const TextStyle(inherit: true)))

      ],)
    ;
  }
}
class TextForListViewAtCategory extends StatelessWidget {
  const TextForListViewAtCategory({super.key});



  @override
  Widget build(BuildContext context) {
    return       Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextForCategory(title: 'Categories View',f: 14,),
        Text('see all' ,style: GoogleFonts.outfit(
            decoration: TextDecoration.underline,

            fontSize:14 ,fontWeight: FontWeight.w300,color: const Color((0xff8c8c8c)),
            textStyle:  const TextStyle(inherit: true)))

      ],)
    ;
  }
}
