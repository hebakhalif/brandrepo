import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'createpassword.dart';
import 'forgetpassword_screen.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ForgetpasswordScreen()));
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
                "assets/images/freepik-export-20240904194952jFEi.png",
                height: 350,
                width: 400,
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
                      "OTP Verification",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Enter the  Verification code vvo just sent on your email address ",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    OTPScreen(),
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
                                  builder: (context) => Createpassword()));
                        },
                        child: Text(
                          "Vorify ",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: Size(400, 60)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't receved code ?",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        TextButton(
                          onPressed: () {
                            //  Navigator.push(context, MaterialPageRoute(builder:
                            //      (context)=> ));  // إضافة عملية فتح صفحة التسجيل هنا
                          },
                          child: Text(
                            'Resond',
                            style: TextStyle(color: Colors.blue, fontSize: 18),
                          ),
                        ),
                      ],
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

class OTPScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 5, // عدد أرقام OTP
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 50,
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        selectedFillColor: Colors.white,
        activeColor: Colors.blue,
        inactiveColor: Colors.blue.shade200,
        selectedColor: Colors.blue,
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      enableActiveFill: true,
      onCompleted: (v) {
        print("Completed: $v"); // عند إدخال الرمز بالكامل
      },
      onChanged: (value) {
        print("Current value: $value"); // عند تغيير القيمة
      },
    );
  }
}
