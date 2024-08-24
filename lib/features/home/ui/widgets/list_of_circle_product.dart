import 'package:flutter/material.dart';
import '../../../../views/Productsscroll.dart';
import '../../data/models/circle_product_model.dart';

class ListOfCircleProduct extends StatelessWidget {
  const ListOfCircleProduct({
    super.key,
  });

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
    return SizedBox(
      height: 130,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductScrollItem(
            image: products[index].image,
            text: products[index].text,
          );  
        },
      ),
    );
  }
}
