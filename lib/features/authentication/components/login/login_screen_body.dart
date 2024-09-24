import 'package:brandy_flutter1/core/helpers/spacing.dart';
import 'package:brandy_flutter1/features/layout/ui/screens/layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/colors/app_colors.dart';
import '../../../../../core/components/custom_button.dart';
import '../../../../../core/constant/app_constant.dart';
import '../../screens/register_screen/register_screen.dart';
import '../common/build_text_next_to_text_button.dart';
import '../common/build_two_text_form_field.dart';
import '../common/sign_with_google.dart';

class LoginScreenBody extends StatelessWidget {
  LoginScreenBody({super.key});
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passController = TextEditingController();
    return SingleChildScrollView(
      child: Center(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SizedBox(
              height: AppConstant.deviceHeight(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign In',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Welcome back, sign in to continue',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.grey,
                          fontSize: 15.sp,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Spacing.verticalSpace(30),
                  CustomTwoTextFromField(
                    controller1: emailController,
                    controller2: passController,
                    hint1: 'Email Address',
                    hint2: 'Password',
                  ),
                  Spacing.verticalSpace(15),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forget Password?',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: (AppColors.kGreyColor),
                            fontSize: 14.sp,
                          ),
                    ),
                  ),
                  Spacing.verticalSpace(20),
                  CustomButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LayoutScreen(),
                        ),
                      );
                    },
                    text: 'Sign In',
                    height: 50.h,
                    color: AppColors.kPrimaryColor,
                    radius: 10,
                    textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                    width: AppConstant.deviceWidth(context),
                  ),
                  Spacing.verticalSpace(25),
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
                  Spacing.verticalSpace(20),
                  customTextNextToTextButton(
                    context: context,
                    text: 'Don\'t have an account?',
                    textButton: 'Sign Up',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    ;
  }
}
