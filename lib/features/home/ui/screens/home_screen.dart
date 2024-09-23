/*import 'package:brandy_flutter1/core/components/custom_divider.dart';
import 'package:brandy_flutter1/features/home/ui/screens/product_screen.dart';
import 'package:brandy_flutter1/features/home/ui/screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../config/colors/app_colors.dart';
import '../widgets/list_of_circle_product.dart';
import '../widgets/slider_products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = [
    'العروض',
    'النساء',
    'الرجال',
    'الأطفال',
    'الأحذية',
  ];

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 30),
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _current = index;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        categories[index],
                        style: TextStyle(
                          color: _current == index
                              ? AppColors.kPrimaryColor
                              : AppColors.kBlackColor,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      _current == index ? myDivider(70, 4) : Container(),
                    ],
                  ),
                );
              },
            ),
          ),
          const ListOfCircleProduct(),
          const SizedBox(height: 15),
          const SliderProducts(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "تسوق حسب المتجر",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryWidget(
                  width: 170,
                  imagePath: "assets/images/photo_2024-08-21_23-30-45.jpg",
                  height: 40,
                ),
                CategoryWidget(
                  width: 170,
                  imagePath: "assets/images/photo_2024-08-21_23-43-54.jpg",
                  height: 40,
                ),
                CategoryWidget(
                  width: 170,
                  imagePath: "assets/images/photo_2024-08-21_23-47-35.jpg",
                  height: 40,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            "أحدث تشكيلة من cLow REClPE",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const ProductList(),
        ],
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.width,
    required this.imagePath,
    required this.height,
  });

  final double height;
  final double width;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProductList(),
          ),
        );
      },
      child: Image.asset(
        imagePath,
        height: height,
        width: width,
      ),
    );
  }
}*/


import 'package:brandy_flutter1/features/home/ui/screens/productdetialspage.dart';
import 'package:flutter/material.dart';
import '../../../../config/colors/app_colors.dart';
import '../../../../core/components/custom_divider.dart';
import '../widgets/list_of_circle_product.dart';
import '../widgets/slider_products.dart';

import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
 const HomeScreen({super.key}); 

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> categories = [
    'العروض',
    'النساء',
    'الرجال',
    'الأطفال',
    'الأحذية',
  ];
  
   List<CardModel> products1= [
   CardModel(
              imageUrl: 'assets/images/photo_2024-09-15_17-05-45.jpg',
              title: 'Product ',
              price: 400 ,
              isFavorite: "",
            ),
              CardModel(
              imageUrl: 'assets/images/photo_2024-09-16_20-24-00.jpg',
              title: 'Product ',
              price: 300.0 ,
              isFavorite: "",
            ),
              CardModel(
              imageUrl: 'assets/images/photo_2024-09-17_22-37-05.jpg',
              title: 'Product ',
              price:  930,
              isFavorite: "",
            ),
              CardModel(
              imageUrl:"assets/images/photo_2024-09-17_00-12-29.jpg",
              title: 'Product ',
              price: 1000,
              isFavorite: ""
            ),
              CardModel(
              imageUrl: 'assets/images/photo_2024-09-19_00-43-13.jpg',
              title: 'Product ',
              price: 5399 ,
              isFavorite: "",
            ),
              CardModel(
              imageUrl: 'assets/imagesphoto_2024-09-19_00-43-23.jpg',
              title: 'Product ',
              price: 889 ,
              isFavorite: ""
            ),
              CardModel(
              imageUrl: 'assets/images/photo_2024-09-17_00-15-40.jpg',
              title: 'Product ',
              price: 2777,
              isFavorite: "Icon(Icons.favorite)",
            ),
];
  
   List<CardModel> products2=[
CardModel(
 imageUrl: 'assets/images/photo_2024-09-19_00-57-52.jpg',
              title: 'Product ',
              price: 2777,
              isFavorite: "Icon(Icons.favorite)",
  ),

CardModel(
 imageUrl: 'assets/images/photo_2024-09-18_01-26-40.jpg',
              title: 'Product ',
              price: 2777,
              isFavorite: "Icon(Icons.favorite)",
  ),
  CardModel(
 imageUrl: 'assets/images/photo_2024-09-19_00-58-08.jpg',
              title: 'Product ',
              price: 2777,
              isFavorite: "Icon(Icons.favorite)",
  ),
  CardModel(
 imageUrl: 'assets/images/photo_2024-09-19_00-58-06.jpg',
              title: 'Product ',
              price: 2777,
              isFavorite: "Icon(Icons.favorite)",
  ),
  CardModel(
 imageUrl: 'assets/images/photo_2024-08-21_01-24-45.jpg',
              title: 'Product ',
              price: 2777,
              isFavorite: "Icon(Icons.favorite)",
  ),
  ];


  int _currentCategoryIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildCategorySelector(),
          const ListOfCircleProduct(),
          const SizedBox(height: 15),
          const SliderProducts(),
          const SizedBox(height: 20),
          _buildStoreSectionTitle(),
          const SizedBox(height: 20),
          _buildCategoryWidgetRow(),
          const SizedBox(height: 20),
          _buildProductSectionTitle(),
          const SizedBox(height: 20),
            ProductList(products: products1),
          const SizedBox(height: 20),
           _buildProductSection(),
           ProductList(products: products2),
                const SizedBox(height: 80),
        ],
      ),
    );
  }

  Widget _buildCategorySelector() { // خاصه بالاقسام الي فوق 
    return SizedBox(
      height: 50,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: 30),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentCategoryIndex = index;
              });
            },
            child: Column(
              children: [
                Text(
                  categories[index],
                  style: TextStyle(
                    color: _currentCategoryIndex == index
                        ? const Color.fromARGB(255, 160, 67, 146)
                        : AppColors.kBlackColor,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 5),
                _currentCategoryIndex == index ? myDivider(70, 4) : Container(),
              ],
            ),
          );
        },
      ),
    );
  }
  Widget _buildStoreSectionTitle() {
    return const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Text(
        "تسوق حسب المتجر",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildCategoryWidgetRow() { // خاصه ب 3 صور الي بيتغيرو مع الوقت 
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoryWidget(
            width: 170,
            imagePath: "assets/images/photo_2024-08-21_23-30-45.jpg",
            height: 40,
          ),
          CategoryWidget(
            width: 170,
            imagePath: "assets/images/photo_2024-08-21_23-43-54.jpg",
            height: 40,
          ),
          CategoryWidget(
            width: 170,
            imagePath: "assets/images/photo_2024-08-21_23-47-35.jpg",
            height: 40,
          ),
        ],
      ),
    );
  }

  Widget _buildProductSectionTitle() {
    return const Text(
      "أحدث تشكيلة من cLow REClPE",
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
  Widget _buildProductSection() {
    return Container( //  خاصه بالمسافه الي بين 2 card
     height: 40,
      width: 300,
      child: const Text(
        "      أحدث تشكيلة من LANCOME",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}


class CategoryWidget extends StatelessWidget { // خاصه ب 3 صور الي فيهم البراندات جمب بعض 
  const CategoryWidget({
    super.key,
    required this.width,
    required this.imagePath,
    required this.height,
  });

  final double height;
  final double width;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileScreen(),
          ),
        );
      },
      child: Image.asset(
        imagePath,
        height: height,
        width: width,
      ),
    );
  }
}
 
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ProfileScreen(),
          ),
        );
      },
    );
  }
  


class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;
  final String isFavorite;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
   required this.isFavorite,

  });


  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180, // Set consistent width for the cards
      margin: const EdgeInsets.symmetric(
          horizontal: 8.0, vertical: 5), // Spacing between cards
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
          _buildProductImage(),
          const SizedBox(height: 10),
          _buildProductInfo(),
        ],
      ),
    );
  }

  Widget _buildProductImage() {
    return Container(
      width: double.infinity,
      height: 140,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildProductInfo() { 
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'BEST SELLER', //******************* */
            style: TextStyle(
              color: Colors.blue,
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          _buildProductPriceAndAddButton(),
        ],
      ),
    );
  }




  Widget _buildProductPriceAndAddButton() { // خاصه ب الزرار الي ف كل منتج 
    return Row(
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
            color: Colors.blue,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ],
    );
  }

}


class CardModel{
   final String imageUrl;
  final String title;
  final double price;
  final String isFavorite;

  CardModel({
 required this.imageUrl,
    required this.title,
    required this.price,
    required this.isFavorite,
  });
}

class ProductList extends StatelessWidget {
  final List<CardModel> products;

  const ProductList({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: products.length,  // عدد المنتجات
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(
                  builder:(context)=>
                 ProductDetailsPage(product:product),
                ),
              );
            },
            child: ProductCard(
              imageUrl: product.imageUrl,
              title: product.title,
              price: product.price,
              isFavorite: product.isFavorite,
            ),
          );
        },
      ),
    );
  }
}
 
