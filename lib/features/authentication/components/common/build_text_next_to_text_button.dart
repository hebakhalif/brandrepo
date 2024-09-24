import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/components/custom_text_button.dart';

Widget customTextNextToTextButton({
  required BuildContext context,
  String text = "",
  required String textButton,
  VoidCallback? onPressed,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontSize: 17.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
        ),
        CustomTextButton(
          onPressed: () {
            onPressed?.call();
          },
          text: textButton,
          fontSize: 17.sp,
        ),
      ],
    );
