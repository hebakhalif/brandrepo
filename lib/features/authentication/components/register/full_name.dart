import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../common/container_with_text_from_feild.dart';

class TitleAndTextFormFeild extends StatelessWidget {
  const TitleAndTextFormFeild({
    super.key,
    required this.nameController,
    required this.title,
    required this.hint,
  });

  final TextEditingController nameController;
  final String title;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontSize: 17.sp,
                color: Colors.black,
              ),
        ),
        Spacing.verticalSpace(10),
        ContainerTextFormFeild(
          isPass: false,
          controller: nameController,
          hint: hint,
          keyboardType: TextInputType.emailAddress,
        ),
      ],
    );
  }
}
