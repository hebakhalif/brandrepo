
import 'dart:math';

import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

/*class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My AppBar with Tabs'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0), // ارتفاع الـ TabBar
          child: TabBar(
          
            controller: _tabController,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.black,
            indicatorWeight: 3.0,
            tabs: [
              Tab(text: 'النساء'),
              Tab(text: 'الرجال'),
              Tab(text: 'الأطفال'),
              Tab(text: 'منطقة العروض'),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(child: Text('النساء')),
          Center(child: Text('الرجال')),
          Center(child: Text('الأطفال')),
          Center(child: Text('منطقة العروض')),
        ],
      ),
    );
  }
}*/

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Center(child: Text("Home")),
    Center(child: Text("Search")),
    Center(child: Text("Profile")),
   Center(child: Text("Settings")),
  ];

 /* final List<Widget> pages=[
HomeScreen(),
OffersScreen(),
CartScreen(),
ProfileScreen(),
  ];*/

void _onTap (int index){
  setState(() {
    _selectedIndex=index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: CustomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 20,
        selectedColor: Color.fromARGB(255, 207, 78, 197),
        unSelectedColor: Colors.grey,
        items: [
          CustomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          CustomNavigationBarItem(icon: Icon(Icons.search), title: Text("Search")),
          CustomNavigationBarItem(icon: Icon(Icons.person), title: Text("Profile")),
          CustomNavigationBarItem(icon: Icon(Icons.settings), title: Text("Settings")),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

/*class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Screen'));
  }
}

class OffersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Offers Screen'));
  }
}

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Cart Screen'));
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Screen'));
  }
}*/