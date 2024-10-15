// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:gem_store_app/core/extensions/validation_ext.dart';
import 'package:gem_store_app/core/mixin/validator.dart';
import 'package:gem_store_app/features/auth/log_in_page/presentation/widgets/log_sign_option.dart';
import 'package:gem_store_app/features/auth/log_in_page/presentation/widgets/swap_btn.dart';
import 'package:gem_store_app/features/auth/sign_up_page/presentation/widgets/log_sign_btn.dart';
import 'package:gem_store_app/features/auth/sign_up_page/presentation/widgets/textfield.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with Validator {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 30),
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Create \nyour account',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    AppTextField(
                      labelText: ' Enter your name',
                      controller: _nameController,
                      validator: validateFullName,
                    ),
                    AppTextField(
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
                    AppTextField(
                      controller: _passwordController,
                      labelText: 'Password',
                      obscureText: true,
                      validator: passwordValidator,
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
                    LogSignBTN(
                      buttonText: " Sign Up",
                      formKey: formKey,
                    ),
                    const LogSignOptions(
                      alternativeSignUpOptionTtx: 'Or Log in with',
                    ),
                    const AuthTextBtn(
                      lineText: 'Already have An acount',
                      btnText: 'Log In',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
