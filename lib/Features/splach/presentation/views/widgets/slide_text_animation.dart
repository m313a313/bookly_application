import 'package:flutter/material.dart';

class SlidingTextAnimation extends StatelessWidget {
  const SlidingTextAnimation({
    super.key,
    required this.slidingText,
  });

  final Animation<Offset> slidingText;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingText,
      builder:(context, _) => SlideTransition(
        position: slidingText,
        child: const Text(
          'Read Free Books',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
