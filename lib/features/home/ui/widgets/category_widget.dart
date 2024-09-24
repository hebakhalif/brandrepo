import 'package:flutter/material.dart';

import '../../../../views/ProfileScreen.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.width,
    required this.imagePath,
    required this.height,
  });

  final double height;
  final double width;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfileScreen(),
          ),
        );
      },
      child: Image.asset(
        imagePath,
        height: height,
        width: width,
      ),
    );
  }
}
