import 'package:brandy_flutter1/core/components/custom_divider.dart';
import 'package:brandy_flutter1/features/home/ui/screens/product_screen.dart';
import 'package:brandy_flutter1/features/home/ui/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../config/colors/app_colors.dart';
import '../widgets/list_of_circle_product.dart';
import '../widgets/slider_products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = [
    'العروض',
    'النساء',
    'الرجال',
    'الأطفال',
    'الأحذية',
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 30),
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
                      _current == index ? myDivider(70, 4) : Container(),
                    ],
                  ),
                );
              },
            ),
          ),
          const ListOfCircleProduct(),
          const SizedBox(height: 15),
          const SliderProducts(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "تسوق حسب المتجر",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryWidget(
                  width: 170,
                  imagePath: "assets/images/photo_2024-08-21_23-30-45.jpg",
                  height: 40,
                ),
                CategoryWidget(
                  width: 170,
                  imagePath: "assets/images/photo_2024-08-21_23-43-54.jpg",
                  height: 40,
                ),
                CategoryWidget(
                  width: 170,
                  imagePath: "assets/images/photo_2024-08-21_23-47-35.jpg",
                  height: 40,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "أحدث تشكيلة من cLow REClPE",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const ProductList(),
        ],
      ),
    );
  }
}

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
            builder: (context) => const ProfileScreen(),
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
