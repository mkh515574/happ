
import 'package:flutter/material.dart';
import 'package:happ/features/Home/view/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  static const String id ="HomeView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: HomeViewBody(),
      ),
    );
  }
}
