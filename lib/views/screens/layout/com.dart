// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/constants.dart';
class TheHeaderByBlackColor extends StatelessWidget {
  String title;
  double f;


  TheHeaderByBlackColor({super.key,  required this.title,required this.f});

  @override
  Widget build(BuildContext context) {
    return
      Text(title ,style: GoogleFonts.outfit(

          fontSize:f ,fontWeight: FontWeight.w600,color: AppColors.blackColor,
          textStyle: const TextStyle(inherit: false)));
  }
}
class TheHeaderByGrayColor extends StatelessWidget {
  String title;
  double f;

  TheHeaderByGrayColor({super.key,  required this.title,required this.f});

  @override
  Widget build(BuildContext context) {
    return
      Text(title ,style: GoogleFonts.outfit(

          fontSize:f ,fontWeight: FontWeight.w300,color: AppColors.grayColor,
          textStyle: const TextStyle(inherit: false)));
  }
}
class TheHeaderByWhiteColor extends StatelessWidget {
  String title;
  double f;

  TheHeaderByWhiteColor({super.key,  required this.title,required this.f});

  @override
  Widget build(BuildContext context) {
    return
      Text(title ,style: GoogleFonts.outfit(

          fontSize:f ,fontWeight: FontWeight.w300,color: Colors.white,
          textStyle: const TextStyle(inherit: false)));
  }
}
class TextForCategory extends StatelessWidget {
  String title;
  double f;

  TextForCategory({super.key,  required this.title,required this.f});

  @override
  Widget build(BuildContext context) {
    return
      Text(title ,style: GoogleFonts.outfit(

          fontSize:f ,fontWeight: FontWeight.w400,color: AppColors.blackColor,
          textStyle: const TextStyle(inherit: false)));
  }
}
class SizedBoxForHeight extends StatelessWidget {
  double h;

  SizedBoxForHeight({super.key,  required this.h});

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(height:MediaQuery.of(context).size.height*h ,);
  }
}

