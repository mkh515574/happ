
import 'package:flutter/material.dart';
import 'package:happ/features/Home/view/home_view.dart';

import '../../../../constants.dart';
import '../../../../core/utils/widgets/custom_button.dart';
import '../../../../core/utils/widgets/custom_text.dart';
import '../../../../core/utils/widgets/custom_text_field.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPassword = false;
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CustomText(
                    text: "Welcome,",
                    isBold: true,
                    fontSize: 30,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  CustomText(
                    text: "Sign in to Continue",
                    //color: Color(0x0f929292),
                    fontSize: 18,
                  ),
                ],
              ),
              GestureDetector(
                  onTap: () {},
                  child: const CustomText(
                    text: "SignUp",
                    color: kColor,
                    isBold: true,
                    fontSize: 20,
                  ))
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const CustomTextField(
            iconData: Icons.email,
            labelText: "Email",
            hintText: "happ@gmail.com",
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextField(
            iconData: Icons.password_outlined,
            suffixIcon: isPassword
                ? Icons.visibility_off
                : Icons.visibility,
            onPressedIcon: () {
              isPassword = !isPassword;
            },
            labelText: "Password",
            hintText: "********",
            keyboardType: TextInputType.text,
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.bottomRight,
            child: CustomText(
              text: "Forgot Password?",
              fontSize: 14,
              // color: Color(0x0f929292),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onTap: () {
              Navigator.pushNamed(context, HomeView.id);
            },
            btnText: 'SignIn',
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
