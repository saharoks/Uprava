import 'package:flutter/material.dart';
import 'package:uprava/page/auth_widget.dart';
import 'package:uprava/page/main_screen_widget.dart';
import 'package:uprava/theme/app-colors.dart';

class Uprava extends StatelessWidget {
  const Uprava({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Упава',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.mainDarkBlue,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainDarkBlue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
      ),
      routes: {
        '/': (context) => MyHomePage(),
        '/auth': (context) => AuthWidget(),
      },
      initialRoute: '/',
    );
  }
}
