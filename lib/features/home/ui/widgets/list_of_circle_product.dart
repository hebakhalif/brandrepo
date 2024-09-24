import 'package:flutter/material.dart';

import '../../../../views/Productsscroll.dart';
import '../../data/models/circle_product_model.dart';

class ListOfCircleProduct extends StatelessWidget {
  const ListOfCircleProduct({
    super.key,
    required this.products,
  });
  final List<CircleProductModel> products;
  @override
  Widget build(BuildContext context) {
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
