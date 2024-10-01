import 'package:flutter/material.dart';
import 'package:hadith/collections.dart';

class QuantityAndActions extends StatefulWidget {
  const QuantityAndActions({super.key});

  @override
  _QuantityAndActionsState createState() => _QuantityAndActionsState();
}

class _QuantityAndActionsState extends State<QuantityAndActions> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void decrementQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // عنصر التحكم في العدد
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: decrementQuantity,
              color: Colors.grey,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                '$quantity',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: incrementQuantity,
              color: Colors.grey,
            ),
          ],
        ),

        const SizedBox(height: 20),

        // الأزرار (أضف للسلة واشتري الآن)
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: OutlinedButton(
                onPressed: () {
                  // أكشن عند الضغط على "اشترِ الآن"
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.red),
                ),
                child: const Text(
                  'إشتري الآن',
                  style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(width: 10), // مسافة بين الزرين
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  // أكشن عند الضغط على "أضف للسلة"
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                child: const Text('أضف للسلة',
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}