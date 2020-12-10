import 'package:flutter/material.dart';
import 'package:kick_off/Page/home_page.dart';
import 'package:kick_off/Page/profile_page.dart';
import 'package:kick_off/Page/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
               border: OutlineInputBorder(),
        ),
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        "/profile": (context) => ProfilePage(),
        "/setting": (context) => SettingPage()
      },
    );
  }
}

