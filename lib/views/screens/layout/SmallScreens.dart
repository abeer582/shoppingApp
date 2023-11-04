
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/constants.dart';
import 'com.dart';

class SmallScreens extends StatelessWidget {
  String title;
  bool isOrder;
  SmallScreens({super.key, required this.title, required this.isOrder});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.18),
            Container(
                height: 200,
                width: 250,
                decoration: const BoxDecoration(
                    color: Color(0xfffafafa),
                    image: DecorationImage(
                        image: AssetImage('assets/image/EmptyState.png')))),
          ],
        ),
        Row(
          children: [
            SizedBox(width: MediaQuery.of(context).size.width * 0.28),
            Text(title,
                style: GoogleFonts.outfit(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff2e2e2e),
                    textStyle: const TextStyle(inherit: false))),
          ],
        ),
        isOrder
            ? Column(
                children: [
                  SizedBox(width: MediaQuery.of(context).size.width * 0.3),
                  Center(
                    child: Text(
                        'you can place your needed orders\n                    to let serve you.',
                        style: GoogleFonts.outfit(
                            fontSize: 22,
                            fontWeight: FontWeight.w300,
                            color: AppColors.grayColor,
                            textStyle: const TextStyle(inherit: false))),
                  ),
                ],
              )
            : const SizedBox(),
        SizedBoxForHeight(h: 0.05)
      ],
    );
  }
}
