import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';
import 'package:gem_store_app/features/auth/forget_password_page/presentation/widgets/back_btn.dart';
import 'package:gem_store_app/features/auth/forget_password_page/presentation/widgets/verify_btn.dart';
import 'package:gem_store_app/features/auth/forget_password_page/presentation/widgets/verify_code_box.dart';

class VerifyCodePage extends StatefulWidget {
  const VerifyCodePage({super.key});

  @override
  State<VerifyCodePage> createState() => _VerifyCodePageState();
}

class _VerifyCodePageState extends State<VerifyCodePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackBtn(),
            Text(
              'Verification code',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Please enter the verification code we sent to your email address',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ConfirmationCodeBox(),
                  ConfirmationCodeBox(),
                  ConfirmationCodeBox(),
                  ConfirmationCodeBox(),
                ],
              ),
            ),
            VerifyPageBtn(
              buttonText: 'Verify me',
            )
          ],
        ),
      ),
    );
  }
}
