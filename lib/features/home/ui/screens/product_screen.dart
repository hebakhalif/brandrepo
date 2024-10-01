import 'package:flutter/material.dart';
import '../../../../config/colors/app_colors.dart';
import 'product_details.dart';
class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
    final String titlex;
  final double price;
  //final bool isFavorite;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
     required this.titlex,
    required this.price,
   // required this.isFavorite,
  });
   
   
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, 
        MaterialPageRoute(builder: (context)=>
        ProductDetailsPage(product: ProductCard(imageUrl: imageUrl,
         title: title,
          titlex: titlex,
           price: price
           )
           )
        )
        );
      },
      child: Container(
        height: 300,
        width: 200,
        margin: const EdgeInsets.only(
          right: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              margin: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titlex,
                    style: TextStyle(
                      color: AppColors.kPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        '\$$price',
                        style: const TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const Spacer(),
                      Container(
                        width: 45,
                        height: 45,
                        decoration: const BoxDecoration(
                          color: AppColors.kPrimaryColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                        ),
                        child: const Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Product {
  final String imageUrl;
  final String title;
   final double price;
  final String isFavorite;
 
  

  Product(this.title, this.isFavorite, this.imageUrl, this.price);
}
