import 'package:flutter/material.dart';

/*class ProductGridPage extends StatelessWidget {
  const ProductGridPage({super.key});

  final  List <String> Products = const [

   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold (
     
    );
  }
}*/


class ProductListPage extends StatelessWidget {
  final List<Product> products = [
   // Product('جاكيت نسائي طويل سادة',
     //'نشتي',
     // 259.00,
    // imageUrl: 'assets/images/photo_2024-08-16_22-50-16.jpg'
     // ),
   // Product('جاكيت طويل بأكمام طويلة', 'نشتي',
   //  269.00, 'assets/image2.jpg'
    // ),
    // أضف المزيد من المنتجات هنا
  ];

  @override
  Widget build(BuildContext context) {
   
    return  
       GridView.builder(  
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
                        Text(product.name, style: TextStyle(fontSize: 16)),
                        SizedBox(height: 5),
                        Text(product.brand, style: TextStyle(color: Colors.grey)),
                        SizedBox(height: 10),
                        Text(
                          'SAR ${product.price.toStringAsFixed(2)}',
                          style: TextStyle(color: Colors.green, fontSize: 16),
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
  final double price ;
  final String imageUrl;
   

   Product (this.name,this.brand, this.imageUrl, this.price);
}