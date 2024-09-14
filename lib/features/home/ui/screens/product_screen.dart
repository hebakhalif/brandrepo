import 'package:flutter/material.dart';

/*class PopularShoesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Popular Shoes',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // تمكين التمرير الأفقي
            itemCount: 10, // عدد المنتجات المعروضة
            itemBuilder: (context, index) {
              return ShoeCard(); // بناء بطاقة الحذاء لكل عنصر
            },
          ),
        ),
      ],
    );
  }
}

class ShoeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 180, // عرض بطاقة الحذاء
        margin: EdgeInsets.only(right: 10), // إضافة مسافة بين البطاقات
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20), // تدوير الزوايا
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2), // لون الظل
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3), // تغيير اتجاه الظل
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border), // أيقونة المفضلة
                  Icon(Icons.favorite, color: Colors.red), // أيقونة المفضلة إذا كانت مضافة
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: Image.asset(
                  'assets/images/photo_2024-09-13_13-43-03.jpg', // رابط صورة الحذاء
                  width: 100,
                  height: 100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'BEST SELLER',
                style: TextStyle(color: Colors.blue, fontSize: 12),
              ),
              Text(
                'Nike Jordan',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                '\$302.00',
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                  mini: true, // حجم صغير للزر
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // إضافة مسافة حول الشبكة
      child: GridView.builder(
        shrinkWrap: true,
        physics:
            const NeverScrollableScrollPhysics(), // تعطيل التمرير عند الحاجة
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عدد الصفوف
          childAspectRatio: .68, // النسبة بين العرض والارتفاع لكل عنصر
          mainAxisSpacing: 5, // المسافة الرأسية بين العناصر
          crossAxisSpacing: 10, // المسافة الأفقية بين العناصر
        ),
        itemCount: 5, // عدد المنتجات
        itemBuilder: (context, index) {
          return ProductCard(
            imageUrl: 'assets/images/photo_2024-09-13_13-43-03.jpg',
            title: 'Product $index',
            price: 300.0 + index * 100,
            isFavorite: index % 2 == 0,
          );
        },
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
            height: 120,
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
                        color: Colors.blue,
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

/*import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // إضافة مسافة حول الشبكة
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // عدد العناصر في الصف الواحد (2 في هذه الحالة)
          crossAxisSpacing: 10, // المسافة الأفقية بين العناصر
          mainAxisSpacing: 10, // المسافة الرأسية بين العناصر
          childAspectRatio: 0.7, // نسبة العرض إلى الارتفاع لكل عنصر
        ),
        itemCount: 10, // عدد المنتجات (يمكنك تغييره لعدد منتجاتك)
        itemBuilder: (context, index) {
          return ProductCard(); // بناء بطاقة المنتج لكل عنصر
        },
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey), // إطار رمادي حول البطاقة
          borderRadius: BorderRadius.circular(10), // تدوير الزوايا
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/freepik-export-20240815202358Sbgk.png', // رابط صورة المنتج
                fit: BoxFit.cover, // تغطية الصورة لحجم العنصر
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0), // إضافة مسافة داخل البطاقة
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'اسم المنتج', // اسم المنتج
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '430 ر.س', // السعر
                    style: TextStyle(color: Colors.green),
                  ),
                  SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {}, // وظيفة الزر
                    child: Text('أضف للسلة'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
