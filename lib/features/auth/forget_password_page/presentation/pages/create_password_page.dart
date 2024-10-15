import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';
import 'package:gem_store_app/features/forget_password_page/pages/password_success.dart';
import 'package:gem_store_app/features/forget_password_page/widgets/back_btn.dart';
import 'package:gem_store_app/features/sign_up_page/widgets/textfield.dart';
import 'package:gem_store_app/core/mixin/validator.dart';

class CreatePasswordPage extends StatefulWidget {
  const CreatePasswordPage({super.key});

  @override
  State<CreatePasswordPage> createState() => _CreatePasswordPageState();
}

class _CreatePasswordPageState extends State<CreatePasswordPage>
    with Validator {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackBtn(),
            const Text(
              'Create new password',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Your new password must be different from previously used password',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Form(
              key: formKey,
              child: AppTextField(
                controller: _passwordController,
                labelText: 'Password',
                obscureText: true,
                validator: passwordValidator,
              ),
            ),
            AppTextField(
              controller: _confirmPasswordController,
              labelText: 'Confirm Password',
              obscureText: true,
              validator: (value) {
                if (value != _passwordController.text) {
                  return 'Password do not match';
                }
                return null;
              },
            ),
            NewPasswordBtn(formKey: formKey),
          ],
        ),
      ),
    );
  }
}

class NewPasswordBtn extends StatelessWidget {
  const NewPasswordBtn({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25.0),
      child: Center(
        child: ElevatedButton(
          onPressed: () {
            if (formKey.currentState!.validate()) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PasswordSuccessPage(),
                ),
              );
            }
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.bottomColor,
              foregroundColor: AppColors.whiteColor,
              fixedSize: const Size(180, 50)),
          child: const Text(
            "Confirm",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ),
    );
  }
}
