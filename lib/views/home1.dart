
import 'package:brandy_flutter1/views/Homw3.dart';
import 'package:brandy_flutter1/views/Logowithline.dart';
import 'package:brandy_flutter1/views/Productsscroll.dart';
import 'package:brandy_flutter1/views/womenscreen.dart';
import 'package:flutter/material.dart';


class Home1 extends StatelessWidget {
  const Home1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
   appBar: AppBar(
    
   title: Center(
    child: LogowithLine(),
   ),
    elevation: 0,
    backgroundColor: Colors.white,
    centerTitle: true,
   leading: IconButton(
    onPressed: (){},
     icon:Icon(
      Icons.search,
      color: Colors.black,
      ),),
      actions: [IconButton(onPressed: (){},
       icon: Icon(Icons.grid_view,color: Colors.black,)),
       IconButton(onPressed: (){},
        icon: Icon(Icons.more_vert,color: Colors.black,)),
       ],
        
   ),
     
    body: Column(
      children: [
      SizedBox(height: 5,),
      Padding(
        padding: const EdgeInsets.only(left: 35),
        
        child: Row(children: [
          SizedBox(height: 70,),
          Text("العروض",style: TextStyle(fontSize: 24,fontWeight: FontWeight.normal),),
          SizedBox(width: 40,),
          Text("الاطفال",style: TextStyle(fontSize: 24,fontWeight: FontWeight.normal),),
            SizedBox(width: 40,),
            TextButton(
              onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> WomenScreen ()));
              },
               child:Text(
                "الرجال",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                  color: Colors.black
                  ),), ),
          
            SizedBox(width: 40,),
        TextButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Home1 ()));
        },
       child: Text(
        "النساء",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
           color: Colors.black
           ),),),
        ],),  
      ),
      
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
         Productsscroll(Imaget:"assets/images/freepik-export-20240814234219bpck.png", textuu: "أحذية", ),
           Productsscroll(Imaget: "assets/images/freepik-export-20240814233149Lxc1.png", textuu: "حقائب نسائية",),
           Productsscroll(Imaget: "assets/images/freepik-export-20240814231253GrB5.png", textuu: "ملابس نسائيه",),
           Productsscroll(Imaget: "assets/images/freepik-export-20240814223734BgJp.png", textuu: "مجموعة الصيف",),
           Productsscroll(Imaget: "assets/images/freepik-export-20240815152612MINe.png", textuu: "اكسسوارات",),
          // Productsscroll(Imaget: "assets/images/freepik-export-20240814223734BgJp.png", textuu: "hhhhhhh",),
            
        ],),
      ),
    
     //   Padding(
      //  padding: const EdgeInsets.only(left: 49),
      //  child: Text("تسوقي من علامتك التجارية المفضلة ",style: TextStyle(fontWeight: FontWeight.bold),),
     // ),
     SizedBox(height: 30,),


      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          
        Image.asset("assets/images/photo_2024-08-16_22-56-03.jpg",
        height: 300,
        width: 300,
        ),
        
         Image.asset("assets/images/photo_2024-08-16_22-50-16.jpg",
        height: 300,
        width: 300,
        ),
        ],),
      ),
      Expanded(child: MyHomePage()),
        
      
   

    ],),
       
    );
     
  }
  
}








