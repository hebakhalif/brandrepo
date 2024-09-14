import 'package:flutter/material.dart';
import '../../../../config/colors/app_colors.dart';
//import '../../../../views/Productsscroll.dart';
//import '../../data/models/circle_product_model.dart';
//import '../widgets/list_of_circle_product.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';

class SliderProducts extends StatelessWidget {
  const SliderProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 140, //كانت 250
        
        autoPlay: true,// فعلتها عشان تتحرك
        autoPlayInterval: const Duration(seconds: 2),// عدد الصور المتحركه 
        autoPlayCurve: Curves.fastOutSlowIn, // 
      ),
      items: [
       // 'assets/images/photo_2024-08-16_23-29-26.jpg',
        'assets/images/photo_2024-08-21_18-28-20.jpg',
        'assets/images/photo_2024-08-21_01-08-14.jpg',
      ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AppColors.kBlackColor.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(i),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
