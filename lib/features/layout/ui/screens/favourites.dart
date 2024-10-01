import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key,});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(19),
        color: const Color.fromARGB(255, 243, 234, 234),
        ),
        child: Icon(Icons.favorite_border_outlined)),
        SizedBox(height: 15),
        Text("احتفظ بكل ما يعجبك في مكان واحد وتلقََ",
        maxLines: 1,
        overflow:TextOverflow.ellipsis,
        style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.bold),
        ),
        Text("أشعارات عن أي خصومات على مفضلات",
        maxLines: 1,
        overflow:TextOverflow.ellipsis,
        style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.bold),
        )
        ],
        ),
      ),
    );
  } 
}
