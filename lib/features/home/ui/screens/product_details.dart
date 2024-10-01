import 'package:brandy_flutter1/features/home/ui/screens/QuantityAndActions.dart';
import 'package:brandy_flutter1/features/home/ui/screens/home_screen.dart';
import 'package:brandy_flutter1/features/home/ui/screens/product_screen.dart';
import 'package:brandy_flutter1/features/home/ui/widgets/woman_category.dart';
import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final ProductCard product;  // هذا المتغير يستقبل بيانات المنتج

  const ProductDetailsPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(product.titlex),  // يعرض اسم المنتج
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.rtl, // بتخلي الكلام ع اليمين 
            
            children: [
              Image.asset(
                product.imageUrl,  // عرض صورة المنتج
                height: 270,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              Text(
                product.titlex,  // عرض عنوان المنتج
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
             // Text(
               // product.isFavorite == 'true' ? "Favorite Product" : "Not Favorite",  // حالة المنتج المفضل
               // style: const TextStyle(fontSize: 16),
             // ),
          
             Text("تسليم متوقع :2اكتوبر -4 اكتوبر "),
              Text("بقى 3 فقط في المخزون",style: TextStyle(color: Colors.black54),),
              SizedBox(height: 10,),
              Text("S, M,XL,XXL :المقاسات المتوفرة" ,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),
              QuantityAndActions(),
              SizedBox(height: 10,),
              Text("منتجات ذات صلة", style: TextStyle(fontSize:20,color: Colors.black54),),
              SizedBox(height: 40,),
               listviewAddsWdget (),

             
            ],
          ),
        ),
      ),
    );
  } 
}
   class listviewAddsWdget extends StatelessWidget {
     @override
     Widget build(BuildContext context) {
       return Column(
children: [
  SingleChildScrollView(
    scrollDirection:Axis.horizontal,
    child: Row(
      children: [

         GestureDetector(
          onTap: (){
          },
          child: Image.asset("assets/images/photo_2024-09-27_03-45-03.jpg",
          height: 200,
          width: 300,
          ),
        ),
        GestureDetector(
          onTap: (){
          },
          child: Image.asset("assets/images/photo_2024-09-27_03-30-28.jpg",
          height: 200,
          width: 300,
          ),
        ),
          GestureDetector(
          onTap: (){
    
          },
          child: Image.asset("assets/images/photo_2024-09-16_20-53-49.jpg",
          height: 200,
          width: 300,
          ),
        ),
      ],
    ),
  )
],
       );
     }
   }

  /*Widget listviewadds (listviewAddsWdget) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) =>listviewAddsWdget() ,
      itemCount: 5,
    );
  }*/
