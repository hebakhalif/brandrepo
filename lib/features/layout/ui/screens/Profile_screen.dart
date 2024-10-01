import 'package:brandy_flutter1/features/layout/ui/screens/ProfilePage.dart';
import 'package:flutter/material.dart';
 
class ProfileScreens extends StatelessWidget {
  const ProfileScreens({super.key,});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
        children: [
          Container(
        height: 40,
        width: 35,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        color: Colors.orangeAccent,
        ),
        child: Icon(Icons.home_outlined)),
        SizedBox(height: 15),
        Text("Heba khalifa",
        style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),
        ),
         ProfileList(),
        ],
        ),
      ),
    );
  } 
}


