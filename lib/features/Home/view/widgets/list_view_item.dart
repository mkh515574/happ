

import 'package:flutter/material.dart';
import 'package:happ/core/utils/widgets/custom_text.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(

          padding: const EdgeInsets.all(16),

          decoration: BoxDecoration(
            border: Border.all(color: Colors.black26),
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Image.asset("assets/images/livingroom.png",width: 40,height: 40,),
        ),
        const SizedBox(height: 8,),
        const CustomText(text: "Living Room",isBold: true,fontSize: 16,)
      ],
    );
  }
}
