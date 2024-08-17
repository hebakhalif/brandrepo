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
        image: 'assets/images/freepik-export-20240814233948omXw.png',
        text: 'العروض',
      ),
      CircleProductModel(
        image: 'assets/images/freepik-export-20240814233948omXw.png',
        text: 'النساء',
      ),
      CircleProductModel(
        image: 'assets/images/freepik-export-20240814233948omXw.png',
        text: 'الرجال',
      ),
      CircleProductModel(
        image: 'assets/images/freepik-export-20240814233948omXw.png',
        text: 'الأطفال',
      ),
      CircleProductModel(
        image: 'assets/images/freepik-export-20240814233948omXw.png',
        text: 'الأحذية',
      ),
    ];
    return SizedBox(
      height: 100,
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
