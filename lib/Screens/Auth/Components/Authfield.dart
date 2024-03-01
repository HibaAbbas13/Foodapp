import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/Screens/Auth/Components/Validation.dart';
import 'package:food_app/data/AppColors.dart';

class AuthField extends StatefulWidget {
  final TextEditingController controller;
  final bool isPassword;
  final String hintText;
  final String icon;

  AuthField({
    super.key,
    required this.controller,
    this.isPassword = false,
    required this.hintText,
    required this.icon,
  });

  @override
  State<AuthField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<AuthField> {
  bool isObscure = true;

  void _togglePasswordVisibility() {
    setState(() {
      isObscure = !isObscure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword ? isObscure : false,
      validator: (value) {
        if (widget.isPassword) {
          return CustomValidator.validatePassword(value);
        } else {
          return CustomValidator.validateUsername(value);
        }
      },
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 37),
        hintText: widget.hintText,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26.r),
            borderSide: BorderSide(color: AppColors.kBlack, width: 1.w)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26.r),
            borderSide: BorderSide(color: AppColors.kBlack, width: 1.w)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26.0.r),
          borderSide: BorderSide(color: AppColors.kBlack, width: 1.0.w),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26.0.r),
          borderSide: BorderSide(color: AppColors.kBlack, width: 1.0.w),
        ),
      ),
    );
  }
}
