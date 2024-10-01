import 'package:flutter/material.dart';

import '../authentication/screens/login_screen/login_screen.dart';
import '../authentication/screens/register_screen/register_screen.dart';

class LoginRegister extends StatelessWidget {
  const LoginRegister({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CardModel> cards = [
      CardModel(
        image: "assets/images/freepik-export-20240923005000rTLm.png",
        title: "Brands bag",
        text: "12 items",
      ),
      CardModel(
        image: "assets/images/freepik-export-202409222314092mFG.png",
        title: "Jacket",
        text: "9 items",
      ),
      CardModel(
        image: "assets/images/freepik-export-20240923005313MIdY.png",
        title: "Clothes",
        text: "7 items",
      ),
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BrandHeader(),
            const SizedBox(height: 30),
            ProductCardList(cards: cards),
            const Spacer(),
            const ActionButtons(),
            const SizedBox(height: 20),
            const BrowseButton(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class BrandHeader extends StatelessWidget {
  const BrandHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "BRANDY.",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 43, 42, 40),
          ),
        ),
        Text(
          "The home for all your wishlists.",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}

class ProductCardList extends StatelessWidget {
  final List<CardModel> cards;
  const ProductCardList({required this.cards, super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      child: ListView.separated(
       //physics: const BouncingScrollPhysics(),
        physics:const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => const SizedBox(width: 40),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(5.0),
          child: ProductCard(card: cards[index]),
        ),
        itemCount: cards.length,
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final CardModel card;

  const ProductCard({required this.card, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 300,
      decoration: BoxDecoration(
        color: const Color.fromARGB(194, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 40,
            left: 20,
            right: 20,
            child: Image.asset(
              card.image,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Text(
                card.title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: Text(
              card.text,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: const Size(300, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: const Text('LOGIN'),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RegisterScreen()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 68, 66, 66),
            minimumSize: const Size(300, 60),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: const Text(
            'CREATE ACCOUNT',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class BrowseButton extends StatelessWidget {
  const BrowseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'Browse',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}

class CardModel {
  final String image;
  final String title;
  final String text;

  CardModel({
    required this.image,
    required this.title,
    required this.text,
  });
}
