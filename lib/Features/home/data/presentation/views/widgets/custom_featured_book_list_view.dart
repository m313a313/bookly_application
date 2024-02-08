import 'package:booklyapp/Features/home/data/presentation/views/widgets/custom_featured_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomFeaturedBookListView extends StatelessWidget {
  const CustomFeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, count) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomListViewItem(),
            );
          }),
    );
  }
}
