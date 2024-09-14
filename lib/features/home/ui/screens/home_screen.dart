import 'package:brandy_flutter1/core/components/custom_divider.dart';
import 'package:brandy_flutter1/features/home/ui/screens/product_screen.dart';
import 'package:brandy_flutter1/features/home/ui/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../config/colors/app_colors.dart';
//import '../../../../views/Productsscroll.dart';
//import '../../data/models/circle_product_model.dart';
import '../widgets/list_of_circle_product.dart';
//import 'package:carousel_slider_plus/carousel_slider_plus.dart';

import '../widgets/slider_products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final List <Product> products = const [
  // Product('جاكيت نسائي طويل سادة',
  //'نشتي',
  // 259.00,
  // imageUrl: 'assets/images/photo_2024-08-16_22-50-16.jpg'
  // ),
  // Product('جاكيت طويل بأكمام طويلة', 'نشتي',
  //  269.00, 'assets/image2.jpg'
  // ),
  // أضف المزيد من المنتجات هنا
];

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = [
    'العروض',
    'النساء',
    'الرجال',
    'الأطفال',
    'الأحذية',

    // 'الإلكترونيات',
    //'المنزل',
    // 'الأثاث',
  ];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
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
            const SizedBox(
              height: 20,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  categor(
                      width: 170,
                      imagem: "assets/images/photo_2024-08-21_23-30-45.jpg",
                      heightm: 40),
                  categor(
                      width: 170,
                      imagem: "assets/images/photo_2024-08-21_23-43-54.jpg",
                      heightm: 40),
                  categor(
                      width: 170,
                      imagem: "assets/images/photo_2024-08-21_23-47-35.jpg",
                      heightm: 40),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "  cLow REClPE  أحدث تشكيلة من ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ProductList(),
          
          ],
        ),
      ),
    );
  }
}

///////////////////
class categor extends StatelessWidget {
  const categor(
      {super.key,
      required this.width,
      required this.imagem,
      required this.heightm});
  final double heightm;
  final double width;
  final String imagem;
  // final String onTapp;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          child: Image.asset(
            imagem,
            height: heightm,
            width: width,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const ProfileScreen();
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
