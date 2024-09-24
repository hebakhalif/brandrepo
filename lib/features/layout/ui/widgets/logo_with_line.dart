import 'package:brandy_flutter1/config/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogoWithLine extends StatelessWidget {
  const LogoWithLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          color: AppColors.kPrimaryColor,
          height: 2.0,
          width: 100.0,
        ),
        RichText(
          text: TextSpan(
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
              children: <TextSpan>[
                const TextSpan(text: "Bran"),
                TextSpan(
                  text: "dy",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.black,
                        fontSize: 24.0.sp,
                      ),
                ),
                TextSpan(
                  text: ".sa",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.normal,
                      color: Colors.black54),
                )
              ]),
        ),
      ],
    );
  }
}
