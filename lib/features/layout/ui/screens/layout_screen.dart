import 'package:brandy_flutter1/config/colors/app_colors.dart';
import 'package:brandy_flutter1/features/home/ui/screens/home_screen.dart';
import 'package:brandy_flutter1/features/layout/ui/widgets/logo_with_line.dart';
//import 'package:brandy_flutter1/views/ProfileScreen.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    Center(child: Text("Search")),
    Center(child: Text("Profile")),
    Center(child: Text("Settings")),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Iconsax.search_normal_outline,
            color: Colors.black,
          ),
        ),
        title: const LogoWithLine(),
        centerTitle: true,
        actions: const [
          Icon(
            Iconsax.shopping_cart_outline,
          ),
        ],
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomNavigationBar(
          borderRadius: const Radius.circular(20),
          backgroundColor: Colors.white,
          elevation: 20,
          selectedColor: AppColors.kPrimaryColor,
          unSelectedColor: AppColors.kGreyColor,
          items: [
            CustomNavigationBarItem(
              icon: const Icon(Iconsax.home_outline),
              title: Text(
                "Home",
                style: TextStyle(
                  color: _selectedIndex == 0
                      ? AppColors.kPrimaryColor
                      : AppColors.kGreyColor,
                ),
              ),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Iconsax.search_normal_outline),
              title: Text(
                "Search",
                style: TextStyle(
                  color: _selectedIndex == 1
                      ? AppColors.kPrimaryColor
                      : AppColors.kGreyColor,
                ),
              ),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Iconsax.profile_circle_outline),
              title: Text(
                "Profile",
                style: TextStyle(
                  color: _selectedIndex == 2
                      ? AppColors.kPrimaryColor
                      : AppColors.kGreyColor,
                ),
              ),
            ),
            CustomNavigationBarItem(
              icon: const Icon(Icons.settings),
              title: Text(
                "Settings",
                style: TextStyle(
                  color: _selectedIndex == 3
                      ? AppColors.kPrimaryColor
                      : AppColors.kGreyColor,
                ),
              ),
            ),
          ],
          strokeColor: AppColors.kPrimaryColor,
          currentIndex: _selectedIndex,
          onTap: _onTap,
        ),
      ),
    );
  }
}
