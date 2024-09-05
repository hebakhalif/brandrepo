import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'otp_screen.dart';

class Createpassword extends StatelessWidget {
  const Createpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OtpScreen()));
            },
            icon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(97, 205, 201, 201)),
                child: const Icon(Icons.arrow_back))),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Create new password",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),

                    const Text(
                      "Your new password must be unique from those previously used",
                      style: TextStyle(fontSize: 16),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    const Text(
                      " New Password",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        obscureText: true,
                        //controller: emailController, // المتغيرات
                        keyboardType: TextInputType
                            .emailAddress, // بتضيف لي في الكيبورد علامه الايميل بتسهل ع المسخدم
                        decoration: InputDecoration(
                          labelText: "Enter Password",
                          suffixIcon: const Icon(Icons
                              .remove_red_eye), // بتخلي الايكون في البدايه عادي

                          border: OutlineInputBorder(
                            // دي لوحدها بتعمل مربع لو من غيرها هيبقي في خط واحد فقط تحت
                            borderRadius: BorderRadius.circular(
                                25), // لو عايزه اتحكم في الزوايه بتاعت التيكت فورم فيلد
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Confirm Password",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: TextFormField(
                        obscureText: true,
                        //controller: emailController, // المتغيرات
                        keyboardType: TextInputType
                            .emailAddress, // بتضيف لي في الكيبورد علامه الايميل بتسهل ع المسخدم
                        decoration: InputDecoration(
                          labelText: "Enter confirm Password",
                          suffixIcon: const Icon(Icons
                              .remove_red_eye), // بتخلي الايكون في البدايه عادي

                          border: OutlineInputBorder(
                            // دي لوحدها بتعمل مربع لو من غيرها هيبقي في خط واحد فقط تحت
                            borderRadius: BorderRadius.circular(
                                25), // لو عايزه اتحكم في الزوايه بتاعت التيكت فورم فيلد
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: const Text(
                          " Resot Password",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            minimumSize: const Size(400, 50)),
                      ),
                    ),
                    //////////////////
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
