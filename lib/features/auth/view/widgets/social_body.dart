import 'package:flutter/material.dart';

import '../../../../core/utils/widgets/custom_icon_button.dart';
import '../../../../core/utils/widgets/custom_text.dart';

class SocialBody extends StatelessWidget {
  const SocialBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        const SizedBox(
          height: 20,
        ),
        const CustomText(text: "___ OR ___"),
        const SizedBox(
          height: 30,
        ),
        CustomIconButton(
          imgUrl: "assets/images/Icon_Facebook.png",
          text: "Sign In with Facebook",
          onTab: () {},
        ),
        const SizedBox(
          height: 30,
        ),
        CustomIconButton(
          imgUrl: "assets/images/icons8_Google_2.png",
          text: "Sign In with Google",
          onTab: () {},
        ),
      ],
    );
  }
}
