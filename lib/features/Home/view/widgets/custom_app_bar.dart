
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){}, icon:const Icon(Icons.menu,size: 30,) ),
        const CircleAvatar(
          radius: 30,

          backgroundImage: AssetImage("assets/images/Image.png",),
        )
      ],
    );
  }
}
