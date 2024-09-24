import 'package:brandy_flutter1/config/themes/font_weight.dart';
import 'package:brandy_flutter1/features/home/ui/screens/product_screen.dart';
import 'package:flutter/material.dart';
import '../../../../core/helpers/spacing.dart';
import '../widgets/category_widget.dart';
import '../widgets/list_of_circle_product.dart';
import '../widgets/slider_products.dart';
import '../../data/models/circle_product_model.dart';

class WomanCategory extends StatelessWidget {
  const WomanCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<CircleProductModel> products = [
      CircleProductModel(
        image: 'assets/images/freepik-export-20240814231253GrB5.png',
        text: 'ملابس نسائية ',
      ),
      CircleProductModel(
        image: 'assets/images/freepik-export-20240820222529hogp.png',
        text: 'اكسسوارات هاند ميد',
      ),
      CircleProductModel(
        image: 'assets/images/freepik-export-20240820222229i2pE.png',
        text: 'الأحذية',
      ),
      CircleProductModel(
        image: 'assets/images/freepik-export-20240820194907T31q.png',
        text: 'منتجات ',
      ),
      CircleProductModel(
        image: 'assets/images/freepik-export-20240816203114STzA.png',
        text: 'متنوعات',
      ),
    ];

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListOfCircleProduct(products: products),
          Spacing.verticalSpace(15),
          const SliderProducts(),
          Spacing.verticalSpace(20),
          _buildStoreSectionTitle(),
          Spacing.verticalSpace(20),
          _buildCategoryWidgetRow(),
          Spacing.verticalSpace(20),
          _buildProductSectionTitle(),
          Spacing.verticalSpace(20),
          _buildProductList(),
          Spacing.verticalSpace(100),
        ],
      ),
    );
  }

  Widget _buildStoreSectionTitle() {
    return const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Center(
        child: Text(
          "تسوق حسب المتجر",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeightHelper.regular,
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryWidgetRow() {
    return const SingleChildScrollView(
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
    );
  }

  Widget _buildProductSectionTitle() {
    return const Center(
      child: Text(
        "أحدث تشكيلة من cLow REClPE",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeightHelper.regular,
        ),
      ),
    );
  }

  Widget _buildProductList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          5,
          (index) => GestureDetector(
            onTap: () {},
            child: ProductCard(
              imageUrl: 'assets/images/photo_2024-09-13_13-43-03.jpg',
              title: 'Product $index',
              price: 300.0 + index * 100,
              isFavorite: index % 2 == 0,
            ),
          ),
        ),
      ),
    );
  }
}
