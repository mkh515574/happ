
import 'package:flutter/material.dart';
import 'package:happ/features/auth/view/widgets/login_view_body.dart';


class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  static const String id = "LoginView";
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[180],
      body: const LoginViewBody(),
    );
  }
}
