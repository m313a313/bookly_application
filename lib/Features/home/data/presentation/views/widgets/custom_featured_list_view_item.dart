import 'package:booklyapp/core/utlti/asset_data.dart';
import 'package:flutter/material.dart';
class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.height * .17,
      decoration: BoxDecoration(
          color: Colors.red,
          image: const DecorationImage(
              image: AssetImage(AssetsData.testImage), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(12)),
    );
  }
}

