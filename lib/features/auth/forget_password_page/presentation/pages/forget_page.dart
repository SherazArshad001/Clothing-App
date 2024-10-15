// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:gem_store_app/core/common/app_colors/app_colors.dart';
import 'package:gem_store_app/core/extensions/validation_ext.dart';
import 'package:gem_store_app/features/forget_password_page/pages/verify_code_page.dart';
import 'package:gem_store_app/features/forget_password_page/widgets/back_btn.dart';
import 'package:gem_store_app/features/sign_up_page/widgets/textfield.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackBtn(),
            const Text(
              'Forget password',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Enter email associated with your account and we’ll send and email with intructions to reset your password',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 45.0),
              child: Form(
                key: formKey,
                child: AppTextField(
                  labelText: 'Email address',
                  controller: _emailController,
                  validator: (value) {
                    String? emailValidation = value?.emailValidation;
                    if (emailValidation != null) {
                      return emailValidation;
                    }
                    return null;
                  },
                ),
              ),
            ),
            ForgetPageBtn(
              formKey: formKey,
              btnText: 'Continue',
            ),
          ],
        ),
      ),
    );
  }
}

class ForgetPageBtn extends StatelessWidget {
  final String btnText;
  const ForgetPageBtn({
    super.key,
    required this.btnText,
    required this.formKey,
  });
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const VerifyCodePage(),
              ),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.bottomColor,
          foregroundColor: AppColors.whiteColor,
          fixedSize: const Size(180, 50),
        ),
        child: Text(
          btnText,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
