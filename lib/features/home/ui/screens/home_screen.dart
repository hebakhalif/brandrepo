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
          _buildProductList(),
          const SizedBox(height: 100),
        ],
      ),
    );
  }

  Widget _buildCategorySelector() {
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
                        ? AppColors.kPrimaryColor
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

  Widget _buildCategoryWidgetRow() {
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

  Widget _buildProductList() {
    return SizedBox(
      height: 280,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {},
            child: ProductCard(
              imageUrl: 'assets/images/photo_2024-09-13_13-43-03.jpg',
              title: 'Product $index',
              price: 300.0 + index * 100,
              isFavorite: index % 2 == 0,
            ),
          );
        },
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

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double price;
  final bool isFavorite;

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
      height: 120,
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
            'BEST SELLER',
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

  Widget _buildProductPriceAndAddButton() {
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
