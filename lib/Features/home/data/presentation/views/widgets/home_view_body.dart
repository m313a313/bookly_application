import 'package:booklyapp/Features/home/data/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/Features/home/data/presentation/views/widgets/custom_featured_book_list_view.dart';
import 'package:booklyapp/core/utlti/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        CustomAppBar(),
        CustomFeaturedBookListView(),
        SizedBox(height: 12,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal:24.0),
          child: Text('Best Seller',style: Styles.titleMeduim,),
        )
      ]),
    );
  }
}
