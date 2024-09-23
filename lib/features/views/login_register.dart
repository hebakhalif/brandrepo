import 'package:brandy_flutter1/features/views/register_screen.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
/*class LoginRegister extends StatelessWidget {
  const LoginRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            "assets/images/freepik-export-20240903131247rye0.png",
            height: 400,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                          "assets/images/photo_2024-09-03_19-10-16.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Localashop",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Text(
                  "Everything you need is in one place ",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "find your daily neccessilios of Brond The warlds largest fashion e_commerce has orrived in a mobile. shop now   ",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(16),
                      ),
                      minimumSize: const Size(400, 60)),
                  child: const Text(
                    " Login",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(16),
                    ),
                      backgroundColor: const Color.fromARGB(255, 245, 237, 237),
                      
                      minimumSize: const Size(400, 60)),
                  child: const Text(
                    " Register",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}*/

class LoginRegister extends StatelessWidget {
  const LoginRegister({super.key});
 


  @override
  Widget build(BuildContext context) {

 List <CardModel> cards= [
  CardModel(
    image: "assets/images/freepik-export-202409222314092mFG.png",
   title: "Jacket",
    text: "12 items ",
     ),
     CardModel(
    image: "assets/images/freepik-export-20240923005000rTLm.png",
   title: "Brands bage",
    text: "9 items ",
     ),
       CardModel(
       
    image: "assets/images/freepik-export-20240923005313MIdY.png",
   title: "Clothes",
    text: "& items",
     )
 ];
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
          " BRANDY.",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
              ),
              Text("The home for all your wishlists .",
              maxLines: 1,
               overflow: TextOverflow.ellipsis,
               style: TextStyle(
                fontSize: 18,
                ),),
                SizedBox(height: 30,),
              
              Container(
                width: double.infinity,
                child: SizedBox(
                  height: 300,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => SizedBox(width: 40,),
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ( context,index)=> buildProductCards(cards[index]) ,
                    itemCount: cards.length,     
                      
                    ),
                ),
              ),
                 SizedBox(height: 20,),
                 Spacer(flex: 1,),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () { 
                     Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    minimumSize: const Size(300, 60), // حجم الزر
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text('LOGIN'),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {  
                   Navigator.push(context,
                  MaterialPageRoute(
                            builder: (context) => const RegisterScreen()));
                 },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 68, 66, 66),
                  minimumSize: const Size(300, 60), // حجم الزر
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text('CREATE ACCOUNT',style: TextStyle(color: Colors.white),),
              ),
              SizedBox(height: 20,),
              
              TextButton(onPressed: (){
              },
               child: const Text(
                'Browse',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  decoration: TextDecoration.underline,)),
              ),
                 SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildProductCards(CardModel cards) =>
   
       Container(
      width: 250,
      height: 300,
      decoration: BoxDecoration(
        color: const Color.fromARGB(194, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: Offset(0, 4),
            
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
    cards.image,
    height: 300,
    width:double.infinity,
    fit: BoxFit.cover,
  ),
),
          Positioned( 
           top: 20,
           left: 20,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
                ],
              ),
          child: Text(cards.title,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
              
            ),

            ),
            Positioned(
              top: 20,
              right: 20,
              child: Text(cards.text,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),)
              ),
        ],
      ),
      );
   
}


class CardModel{
   final String image;
  final String title;
  final String text;
  

  CardModel({
 required this.image,
    required this.title,
    required this.text,
   
  });
}

