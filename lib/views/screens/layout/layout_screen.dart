// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../widgets/indecator_widget.dart';
import '../../widgets/order_widget.dart';
import '../../widgets/welcome_widget.dart';
import 'SmallScreens.dart';
import 'com.dart';
import 'home_screen/home_screen.dart';

class LayoutScreen extends StatefulWidget {
  int? currentIndex = 0;

  LayoutScreen({
    super.key,
    required this.currentIndex,
  });

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;

  @override
  void initState() {
    currentIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 10,
        centerTitle: true,
        title: TheHeaderByBlackColor(
          title: currentIndex == 0
              ? 'Home'
              : currentIndex == 1
                  ? 'Assets'
                  : currentIndex == 2
                      ? 'Support'
                      : 'Profile',
          f: 24,
        ),
        elevation: 0,
        foregroundColor: Colors.white,
        leading: const ImageIcon(
          AssetImage(
            'assets/icon/menu_icon.png',
          ),
          color: AppColors.blackColor,
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: AppColors.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        child: SingleChildScrollView(
          child: Column(children: [
            const WelcomeWidget(),
            SizedBoxForHeight(h: 0.055),
            const OrderWidget(),
            SizedBoxForHeight(h: 0.03),
            const IndecatorWidget(),
            SizedBoxForHeight(h: 0.03),
            currentIndex == 0
                ? const HomeScreen()
                : currentIndex == 1
                    ? SmallScreens(
                        title: 'No Assets Found',
                        isOrder: false,
                      )
                    : currentIndex == 2
                        ? SmallScreens(
                            title: 'No Support Found',
                            isOrder: false,
                          )
                        : SmallScreens(
                            title: 'No Profile Found',
                            isOrder: false,
                          )
          ]),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        elevation: 0.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,

        // ),
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.unselectedItemColor,
        iconSize: 29,
        selectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),

        unselectedLabelStyle:
            const TextStyle(fontWeight: FontWeight.w400, fontSize: 15),

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icon/assets_icon.png')),
              label: 'Assets'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/icon/support_agent.png')),
              label: '  Support'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ' Profile'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
