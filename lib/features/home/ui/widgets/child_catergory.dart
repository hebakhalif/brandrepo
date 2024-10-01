import 'package:brandy_flutter1/core/helpers/spacing.dart';
import 'package:brandy_flutter1/features/home/data/models/circle_product_model.dart';
import 'package:brandy_flutter1/features/home/ui/widgets/list_of_circle_product.dart';
import 'package:brandy_flutter1/features/home/ui/widgets/slider_products.dart';
import 'package:flutter/material.dart';
class ChildCategory extends StatelessWidget {
  ChildCategory({super.key});
  


 final List<CircleProductModel> products = [
      CircleProductModel(
        image: 'assets/images/photo_2024-09-27_15-44-02.jpg',
       // text: 'ملابس نسائية ',
      ),
      CircleProductModel(
        image: 'assets/images/photo_2024-09-27_16-08-55.jpg',
        //text: 'اكسسوارات هاند ميد',
      ),
      CircleProductModel(
        image: 'assets/images/photo_2024-09-27_16-15-10.jpg',
        //text: 'الأحذية',
      ),
    ];
    
 final List <String> item=const [
"assets/images/photo_2024-08-21_01-08-14.jpg",
 'assets/images/photo_2024-08-21_01-08-14.jpg',
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

