import 'package:exam100722/UI/home.dart';
import 'package:exam100722/UI/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // home: const Home(),
      routes: {
        '/': (context) {
          return const Login();
        },
        '/home': (context) {
          return const Home();
        },
      },
    );
  }
}
