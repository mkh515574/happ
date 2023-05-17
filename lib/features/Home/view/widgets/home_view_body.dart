import 'package:flutter/cupertino.dart';
import 'package:happ/core/utils/widgets/custom_text.dart';
import 'package:happ/features/Home/view/widgets/custom_app_bar.dart';

import 'list_view_item_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          SizedBox(height: 30,),
          CustomText(text: "Hi Mark",fontSize: 30,isBold: true,),
          SizedBox(height: 5,),
          CustomText(text: "Welcome To Your Smart Home",fontSize: 20),
          SizedBox(height: 20,),
          CustomText(text: "Rooms",fontSize: 30,isBold: true,),
          SizedBox(height: 20,),
          ListViewItemBuilder()
        ],
      ),
    );
  }
}
