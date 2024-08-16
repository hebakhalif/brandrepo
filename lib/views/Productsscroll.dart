import 'package:flutter/material.dart';

class Productsscroll extends StatelessWidget {
  const Productsscroll({super.key, required this.Imaget, required this.textuu});
 
 final String Imaget ;
 final String textuu;
  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(
        children: [
          Row(
            children: [  
              SizedBox(width: 20,),
              CircleAvatar(
                radius: 45,
                 backgroundColor:  Color.fromARGB(255, 216, 166, 220),
                child:CircleAvatar(
                  backgroundColor:  Color.fromARGB(255, 165, 161, 161),
                 radius: 40,
                  child: Image.asset(Imaget,
                  height: 90,width: 400,
                  fit: BoxFit.cover,
                  ),
                ),
              ), 
              
              ],
              ),
              Text(textuu, style: TextStyle(fontSize: 17),),
        ],
      ),
    );
    
  }
}