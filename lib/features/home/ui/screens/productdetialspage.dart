import 'package:brandy_flutter1/features/home/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final CardModel product;  // هذا المتغير يستقبل بيانات المنتج

  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),  // يعرض اسم المنتج
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.imageUrl,  // عرض صورة المنتج
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              product.title,  // عرض عنوان المنتج
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              '\$${product.price}',  // عرض سعر المنتج
              style: const TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              product.isFavorite == 'true' ? "Favorite Product" : "Not Favorite",  // حالة المنتج المفضل
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}