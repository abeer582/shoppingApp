// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ItemForListViewHeaders extends StatelessWidget {
 List <String> title;
  Color color;
  Color backgroundColor;
  VoidCallback onTap;

  ItemForListViewHeaders({super.key, required this.title,required this.color,required this.backgroundColor,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 30,
        width: 96,
        decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(360)
    ),
      child: TextButton(onPressed: onTap, child:Text(title as String ,style: GoogleFonts.outfit(

      fontSize:14 ,fontWeight: FontWeight.w400,color:color,
      textStyle: const TextStyle(inherit: false)) ),
    ));

  }
}
