import 'package:brandy_flutter1/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../config/colors/app_colors.dart';
import '../../../../../../core/components/custom_button.dart';
import '../../../../../../core/constant/app_constant.dart';
import '../common/build_text_next_to_text_button.dart';
import '../common/build_two_text_form_field.dart';
import '../common/sign_with_google.dart';
import 'full_name.dart';

class RegisterScreenBody extends StatelessWidget {
  RegisterScreenBody({super.key});

  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passController = TextEditingController();
    var nameController = TextEditingController();
    var phoneController = TextEditingController();
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
                    'Sign Up',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 30.sp,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Create an account to continue',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                    textAlign: TextAlign.center,
                  ),
                  Spacing.verticalSpace(30),
                  TitleAndTextFormFeild(
                    nameController: nameController,
                    title: 'Full Name',
                    hint: 'xxxxxxxxx',
                  ),
                  Spacing.verticalSpace(20),
                  TitleAndTextFormFeild(
                    nameController: phoneController,
                    title: 'Phone',
                    hint: '+20100000000',
                  ),
                  Spacing.verticalSpace(20),
                  CustomTwoTextFromField(
                    controller1: emailController,
                    controller2: passController,
                    hint1: 'email Address',
                    hint2: 'password',
                  ),
                  Spacing.verticalSpace(30),
                  CustomButton(
                    onPressed: () {},
                    text: 'Sign Up',
                    height: 50.h,
                    color: AppColors.kPrimaryColor,
                    width: AppConstant.deviceWidth(context),
                    textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Spacing.verticalSpace(20),
                  customTextNextToTextButton(
                      context: context,
                      text: 'Already have an account?',
                      textButton: 'Sign In',
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
