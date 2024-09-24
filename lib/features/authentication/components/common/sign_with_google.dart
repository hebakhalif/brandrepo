import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  const SocialButton(
      {super.key,
      required this.icon,
      required this.color,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),

          backgroundColor: Colors.white, // لون الخلفية للأيقونة
          padding: const EdgeInsets.all(10),
          elevation: 3,
        ),
        child: Icon(icon, color: color, size: 30),
      ),
    );
  }
}
