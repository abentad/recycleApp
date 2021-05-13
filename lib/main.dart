import 'package:flutter/material.dart';
import 'package:recycle_app/Screens/AboutScreen.dart';
import 'package:recycle_app/Screens/BlogDetailScreen.dart';
import 'package:recycle_app/Screens/EventsScreen.dart';
import 'package:recycle_app/Screens/HomeScreen.dart';
import 'package:recycle_app/Screens/LandingScreen.dart';
import 'package:recycle_app/Screens/LoginScreen.dart';
import 'package:recycle_app/Screens/ProfileScreen.dart';
import 'package:recycle_app/Screens/ScanScreen.dart';
import 'package:recycle_app/Screens/SignupScreen.dart';
import 'package:recycle_app/Screens/WalkthroughScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        WalkThrough.id: (context) => WalkThrough(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        LandingScreen.id: (context) => LandingScreen(),
        ScanScreen.id: (context) => ScanScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        BlogDetailScreen.id: (context) => BlogDetailScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        EventsScreen.id: (context) => EventsScreen(),
        AboutScreen.id: (context) => AboutScreen(),
      },
      initialRoute: WalkThrough.id,
    );
  }
}
