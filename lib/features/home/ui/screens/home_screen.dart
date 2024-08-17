import 'package:brandy_flutter1/core/components/custom_divider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../config/colors/app_colors.dart';
import '../../../../views/Productsscroll.dart';
import '../../data/models/circle_product_model.dart';
import '../widgets/list_of_circle_product.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';

import '../widgets/slider_products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = [
    'العروض',
    'النساء',
    'الرجال',
    'الأطفال',
    'الأحذية',
    'الإلكترونيات',
    'المنزل',
    'الأثاث',
  ];
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 15),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _current = index;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        categories[index],
                        style: TextStyle(
                          color: _current == index
                              ? AppColors.kPrimaryColor
                              : AppColors.kBlackColor,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      _current == index ? myDivider(50, 2) : Container(),
                    ],
                  ),
                );
              },
            ),
          ),
          ListOfCircleProduct(),
          SizedBox(height: 15),
          SliderProducts(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
