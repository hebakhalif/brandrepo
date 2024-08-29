import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      'جاكيت نسائي طويل سادة',
      'نشتي',
      'assets/images/photo_2024-08-16_22-50-16.jpg',
      259.00,
    ),
    Product(
      'جاكيت نسائي طويل سادة',
      'نشتي',
      'assets/images/photo_2024-08-16_22-50-16.jpg',
      259.00,
    ),
    Product(
      'جاكيت نسائي طويل سادة',
      'نشتي',
      'assets/images/photo_2024-08-16_22-50-16.jpg',
      259.00,
    ),
    Product(
      'جاكيت نسائي طويل سادة',
      'نشتي',
      'assets/images/photo_2024-08-16_22-50-16.jpg',
      259.00,
    ),

    // أضف المزيد من المنتجات هنا
  ];

  ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        final product = products[index];
        return GestureDetector(
          onTap: () {
            // Navigator.push(
            // context,
            // MaterialPageRoute(
            // builder: (context) => ProductDetailPage(product: product),
            //),
            //);
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 4,
            child: Column(
              children: [
                Image.asset(product.imageUrl, fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.name, style: const TextStyle(fontSize: 16)),
                      const SizedBox(height: 5),
                      Text(product.brand,
                          style: const TextStyle(color: Colors.grey)),
                      const SizedBox(height: 10),
                      Text(
                        'SAR ${product.price.toStringAsFixed(2)}',
                        style:
                            const TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class Product {
  final String name;
  final String brand;
  final double price;
  final String imageUrl;

  Product(this.name, this.brand, this.imageUrl, this.price);
}
