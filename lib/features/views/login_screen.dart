import 'package:brandy_flutter1/features/layout/ui/screens/layout_screen.dart';
import 'package:flutter/material.dart';

import 'forgetpassword_screen.dart';
import 'login_register.dart';
import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  //var emailController=  TextEditingController();
//var passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginRegister(),
              ),
            );
          },
          icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(97, 205, 201, 201)),
            child: const Icon(Icons.arrow_back_ios,
            size: 18.0,
            ),
          ),
        ),
      ),
      
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
            
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                    const Text(
                        "Hello Again !",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
            
                      const Text("Fill Your Details Or Continue With \n                  Social Media",
                      maxLines: 2,
                      style: TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                   
                      const Text(
                        "Email Address",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
            
                      const SizedBox(
                        height: 20,
                      ),
            
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          //controller: emailController, // المتغيرات
                          keyboardType: TextInputType
                              .emailAddress, // بتضيف لي في الكيبورد علامه الايميل بتسهل ع المسخدم
                          decoration: InputDecoration(
                            labelText: "enter your email",
                          //  prefixIcon: const Icon(
                             //   Icons.email), // بتخلي الايكون في البدايه عادي
            
                            border: OutlineInputBorder(
                              // دي لوحدها بتعمل مربع لو من غيرها هيبقي في خط واحد فقط تحت
                              borderRadius: BorderRadius.circular(
                                  20), // لو عايزه اتحكم في الزوايه بتاعت التيكت فورم فيلد
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Password",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
            
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          obscureText: true,
                          //controller: emailController, // المتغيرات
                          keyboardType: TextInputType
                              .emailAddress, // بتضيف لي في الكيبورد علامه الايميل بتسهل ع المسخدم
                          decoration: InputDecoration(
                            labelText: "enter Password",
                            suffixIcon: const Icon(Icons
                                .remove_red_eye), // بتخلي الايكون في البدايه عادي
            
                            border: OutlineInputBorder(
                              // دي لوحدها بتعمل مربع لو من غيرها هيبقي في خط واحد فقط تحت
                              borderRadius: BorderRadius.circular(
                                  20), // لو عايزه اتحكم في الزوايه بتاعت التيكت فورم فيلد
                            ),
                          ),
                        ),
                      ),
            
                      Padding(
                        padding: const EdgeInsets.only(left: 230),
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgetpasswordScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              "Forgot Password? ",
                              
                              style: TextStyle(fontSize: 18,color: Colors.black45),
                            )),
                      ),
            
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ElevatedButton(
                          
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LayoutScreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                              minimumSize: const Size(390, 50)),
                              
                          child: const Text(
                            " Sign In",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1.0,
                              indent: 10,
                              endIndent: 10,
                            ),
                          ),
                          Text(
                            "Or Login with",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1.0,
                              indent: 10,
                              endIndent: 10,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
            
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SocialButton(
                            icon: Icons.facebook,
                            color: Colors.blue,
                            onPressed: () {
                              // قم بإضافة عملية تسجيل الدخول بالفيسبوك هنا
                            },
                          ),
                          const SizedBox(width: 20),
                          SocialButton(
                            icon: Icons.g_mobiledata,
                            color: Colors.red,
                            onPressed: () {
                              // قم بإضافة عملية تسجيل الدخول بجوجل هنا
                            },
                          ),
                          const SizedBox(width: 20),
                          SocialButton(
                            icon: Icons.apple,
                            color: Colors.black,
                            onPressed: () {
                              // قم بإضافة عملية تسجيل الدخول بأبل هنا
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "New User ?",
                            style: TextStyle(color: Colors.black54, fontSize: 18),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const RegisterScreen(),
                                ),
                              ); // إضافة عملية فتح صفحة التسجيل هنا
                            },
                            child: const Text(
                              'Create Account',
                              style: TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
            
                      //////////////////
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  SocialButton(
      {required this.icon, required this.color, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),

          backgroundColor: Colors.white, // لون الخلفية للأيقونة
          padding: const EdgeInsets.all(10),
          elevation: 3,
        ),
        child: Icon(icon, color: color, size: 30),
      ),
    );
  }
}
