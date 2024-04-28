import 'package:flutter/material.dart';

class SilverCustomText extends StatelessWidget {
  const SilverCustomText({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        '   $title',
        style: const TextStyle(
          fontSize: 24,
          fontFamily: '', // add font
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
