import 'package:booklyapp/Features/home/data/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/core/utlti/asset_data.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        CustomAppBar(),
        

      ]),
    );
  }
}
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        color: Colors.red,
        image:const DecorationImage(image: AssetImage(AssetsData.testImage),fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(12)
      ),
    );
  }
}