import 'package:flutter/cupertino.dart';
import 'package:happ/features/Home/view/widgets/list_view_item.dart';

class ListViewItemBuilder extends StatelessWidget {
  const ListViewItemBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const ListViewItem(),
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemCount: 10),
    );
  }
}
