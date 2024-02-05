import 'package:booklyapp/Features/splach/presentation/views/splach_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: const Color(0xff100B20)),
      home: const SplachView(),
    );
  }
}
