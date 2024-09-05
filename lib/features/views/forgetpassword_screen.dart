import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'otp_screen.dart';

class ForgetpasswordScreen extends StatelessWidget {
  const ForgetpasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            icon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(97, 205, 201, 201)),
                child: Icon(Icons.arrow_back))),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/freepik-export-20240903222719HXpM.png",
                height: 350,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Localashop",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Dont worry! li occurs Plooso onter the email address linked with your accaunt. ",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Email",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        //controller: emailController, // المتغيرات
                        keyboardType: TextInputType
                            .emailAddress, // بتضيف لي في الكيبورد علامه الايميل بتسهل ع المسخدم
                        decoration: InputDecoration(
                          labelText: "enter your email",
                          prefixIcon: Icon(
                              Icons.email), // بتخلي الايكون في البدايه عادي

                          border: OutlineInputBorder(
                            // دي لوحدها بتعمل مربع لو من غيرها هيبقي في خط واحد فقط تحت
                            borderRadius: BorderRadius.circular(
                                25), // لو عايزه اتحكم في الزوايه بتاعت التيكت فورم فيلد
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OtpScreen()));
                        },
                        child: Text(
                          "Send code  ",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: Size(400, 60)),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
