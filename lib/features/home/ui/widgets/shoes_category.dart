import 'package:brandy_flutter1/core/helpers/spacing.dart';
import 'package:brandy_flutter1/features/home/data/models/circle_product_model.dart';
import 'package:brandy_flutter1/features/home/ui/widgets/list_of_circle_product.dart';
import 'package:brandy_flutter1/features/home/ui/widgets/slider_products.dart';
import 'package:flutter/material.dart';
class ShoesCategory extends StatelessWidget {
 ShoesCategory({super.key, });
   
final List <String> item=const[
'assets/images/photo_2024-09-23_04-05-15.jpg',
 'assets/images/photo_2024-08-21_01-08-14.jpg',
 ];
  final List<CircleProductModel> products = [
      CircleProductModel(
        image: 'assets/images/photo_2024-09-27_15-44-02.jpg',
      ),
      CircleProductModel(
        image: 'assets/images/photo_2024-09-27_16-08-55.jpg',
      ),
      CircleProductModel(
        image: 'assets/images/photo_2024-09-27_16-15-10.jpg',
        //text: 'الأحذية',
      ),
      CircleProductModel(
        image: 'assets/images/photo_2024-09-27_16-18-23.jpg',
       // text: 'منتجات ',
      ),
      CircleProductModel(
        image: 'assets/images/photo_2024-09-27_15-43-59.jpg',
       // text: 'متنوعات',
      ),
    ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListOfCircleProduct(products: products),
          Spacing.verticalSpace(15),
          const SliderProducts(images:[],),
        ],
      ),
      ),
    );
  } 
}

