import 'package:flaury/app/theme/colors.dart';
import 'package:flaury/app/widgets/apptext.dart';
import 'package:flaury/app/widgets/space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.obscureText = false,
    this.controller,
    this.hint,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.keyboardType,
    this.validator,
  });

  final bool obscureText;
  final TextEditingController? controller;
  final String? hint;
  final String? label;
  final IconButton? prefixIcon;
  final IconButton? suffixIcon;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: label != null,
          child: BigAppText(
            label ?? '',
            color: AppColors.black,
            fontSize: 14.sp,
          ),
        ),
        vSpace(10),
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          obscureText: obscureText,
          controller: controller,
          keyboardType: keyboardType,

          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: AppColors.grey), // Grey border
              borderRadius: BorderRadius.circular(5),
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: hint,

            labelStyle: const TextStyle(
                color: AppColors.black), // Customize label text color
          ),
          style: const TextStyle(
            color: AppColors.black,
          ), // Customize text color
          cursorColor: AppColors.primary, // Customize cursor color
          validator:
              validator, // Use the provided validator function, or it will be null by default
        ),
      ],
    );
  }
}
