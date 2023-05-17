import 'package:flutter/material.dart';

import 'package:happ/features/Home/view/home_view.dart';
import 'package:happ/features/auth/view/login_view.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        LoginView.id : (context) => const LoginView(),
        HomeView.id : (context)=> const HomeView(),
      },
      title: 'HApp',


      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.id,
     // home: const LoginView(),
    );
  }
}


/// samy
