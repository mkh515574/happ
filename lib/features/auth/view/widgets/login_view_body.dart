import 'package:flutter/cupertino.dart';
import 'package:happ/features/auth/view/widgets/sign_in_body.dart';
import 'package:happ/features/auth/view/widgets/social_body.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SignInBody(),
              SocialBody()

            ],
          ),
        ),
      ),
    );
  }
}
