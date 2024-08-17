import 'package:brandy_flutter1/config/colors/app_colors.dart';
import 'package:flutter/material.dart';

class ProductScrollItem extends StatelessWidget {
  const ProductScrollItem({super.key, required this.image, required this.text});

  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 45,
      backgroundColor: AppColors.kPrimaryColor,
      child: CircleAvatar(
        backgroundColor: AppColors.kWhiteColor,
        radius: 43,
        child: Image.asset(
          image,
          height: 90,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
