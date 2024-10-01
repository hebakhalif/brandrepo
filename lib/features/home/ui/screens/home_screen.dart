import 'package:brandy_flutter1/config/themes/font_weight.dart';
import 'package:brandy_flutter1/core/helpers/spacing.dart';
import 'package:brandy_flutter1/features/home/ui/screens/product_details.dart';
import 'package:brandy_flutter1/features/home/ui/widgets/child_catergory.dart';
import 'package:brandy_flutter1/features/home/ui/widgets/man_category.dart';
import 'package:brandy_flutter1/features/home/ui/widgets/shoes_category.dart';
import 'package:brandy_flutter1/features/home/ui/widgets/woman_category.dart';
import 'package:brandy_flutter1/views/OffersScreen.dart';
import 'package:flutter/material.dart';

import '../../../../config/colors/app_colors.dart';
import '../widgets/slider_products.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = [
    'النساء',
    'الرجال',
    'الأطفال',
    'الأحذية',
  ];
  
  int _currentCategoryIndex = 0;

  List <Widget> _categoryWidget=[
 WomanCategory(),
 ManCategory(),
  ChildCategory(),
  ShoesCategory(),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          _buildCategorySelector(),
          Spacing.verticalSpace(20),
          Expanded(
            child: _categoryWidget[_currentCategoryIndex] ,
          ),
        
        ],
      ),
    );
  }
  

  Widget _buildCategorySelector() { //خاصه بالاقسام الرجال النساء وهكذا
    return SizedBox(
      height: 37,
      child: ListView.separated(
        separatorBuilder: (context, index) => Spacing.horizontalSpace(27),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentCategoryIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                border: Border.all(
                  width: .8,
                  color: _currentCategoryIndex == index
                      ? AppColors.kPrimaryColor
                      : AppColors.kGrayColor,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: _currentCategoryIndex == index
                      ? AppColors.kPrimaryColor
                      : AppColors.kGrayColor,
                  fontWeight: FontWeightHelper.light,
                  fontSize: 17,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}









