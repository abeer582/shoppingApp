import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/views/screens/layout/home_screen/category/cubit/cubit.dart';
import 'package:shopping_app/views/screens/layout/layout_screen.dart';

void main()async {

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home: LayoutScreen(currentIndex: 0),
    );
  }
}
