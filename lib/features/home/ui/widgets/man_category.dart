
import 'package:brandy_flutter1/config/themes/font_weight.dart';
import 'package:brandy_flutter1/core/helpers/spacing.dart';
import 'package:brandy_flutter1/features/home/data/models/circle_product_model.dart';
import 'package:brandy_flutter1/features/home/ui/screens/product_screen.dart';
import 'package:brandy_flutter1/features/home/ui/widgets/category_widget.dart';
import 'package:brandy_flutter1/features/home/ui/widgets/list_of_circle_product.dart';
import 'package:brandy_flutter1/features/home/ui/widgets/slider_products.dart';
import 'package:flutter/material.dart';
class ManCategory extends StatelessWidget {
   ManCategory({super.key,});
   
 List <String> item=[
'assets/images/photo_2024-08-21_18-28-20.jpg',
 'assets/images/photo_2024-08-21_01-08-14.jpg',
 ];
 

 List <Product>products1=[
               Product(
                "Short dress",
            "فستان قصير باكمام طويل ",
             "assets/images/photo_2024-09-15_17-05-45.jpg",
              777
              ),
               Product(
            "BEST SELLER",
            "kghubhljo;",
             'assets/images/photo_2024-09-16_20-24-00.jpg',
              777
              ),
               Product(
           "BEST SELLER",
            "kghubhljo;",
             "assets/images/photo_2024-09-17_22-37-05.jpg",
              777
              ),
               Product(
          "BEST SELLER",
            "kghubhljo;",
             "assets/images/photo_2024-09-17_00-12-29.jpg",
              777
              ),
                    Product(
          "BEST SELLER",
            "kghubhljo;",
             "assets/images/photo_2024-09-19_00-43-13.jpg",
              777
              ),
                    Product(
          "BEST SELLER",
            "kghubhljo;",
             "assets/images/photo_2024-08-21_01-24-45.jpg",
              777
              ),
                    Product(
          "BEST SELLER",
            "kghubhljo;",
             "assets/images/photo_2024-09-17_00-15-40.jpg",
              777
              ),
             
     ];

 List<CircleProductModel> products = [
      CircleProductModel(
        image: 'assets/images/photo_2024-09-27_15-44-02.jpg',
      ),
      CircleProductModel(
        image: 'assets/images/photo_2024-09-27_16-08-55.jpg',
        //text: 'اكسسوارات هاند ميد',
      ),
      CircleProductModel(
        image: 'assets/images/photo_2024-09-27_16-15-10.jpg',
      ),
      CircleProductModel(
        image: 'assets/images/photo_2024-09-27_16-18-23.jpg',
      ),
      CircleProductModel(
        image: 'assets/images/photo_2024-09-27_15-43-59.jpg',

      ),
    ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child:SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListOfCircleProduct(products: products),
            Spacing.verticalSpace(15),
            const SliderProducts(images:[],),
              Spacing.verticalSpace(20),
             _buildStoreSectionTitle(),
               Spacing.verticalSpace(20),
            _buildCategoryWidgetRow(),
            Spacing.verticalSpace(20),
              _buildProductSectionTitle(),
            Spacing.verticalSpace(20),
            _buildProductList(products1),
             Spacing.verticalSpace(30),
          ],
                ),
        ),
      ),
    );
  } 
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
        " cLow REClPE أحدث تشكيلة من ",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeightHelper.regular,
        ),
      ),
    );
  }

  Widget _buildProductList(List<Product>products1) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          products1.length,
          (index) => GestureDetector(
            onTap: () {},
            child: ProductCard(
              imageUrl: products1[index].imageUrl,
              title:  products1[index].title,
               titlex:  products1[index].title,
              price:  products1[index].price,
             // isFavorite: index % 2 == 0,
            ),
          ),
        ),
      ),
    );
  }


