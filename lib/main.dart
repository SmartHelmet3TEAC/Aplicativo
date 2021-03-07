import 'package:flutter/material.dart';
import 'package:smarthelmet/Paginas/login.dart';
import 'sidebar/sidebar_layout.dart';
import 'Paginas/paginas.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.white,
      ),

      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        'ForgotPassword': (context) => ForgotPassword(),
        'CreateNewAccount': (context) => CreateNewAccount(),
        'HomePage': (context) => SideBarLayout(),
      },
    );
  }
}