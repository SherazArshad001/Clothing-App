import 'package:flutter/material.dart';
import 'package:gem_store_app/core/mixin/validator.dart';
import 'package:gem_store_app/features/auth/log_in_page/presentation/widgets/log_sign_option.dart';
import 'package:gem_store_app/features/auth/log_in_page/presentation/widgets/swap_btn.dart';
import 'package:gem_store_app/features/auth/sign_up_page/presentation/widgets/log_sign_btn.dart';
import 'package:gem_store_app/features/auth/sign_up_page/presentation/widgets/textfield.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> with Validator {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 30),
          child: SingleChildScrollView(
            child: Align(
              alignment: Alignment.center,
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Log Into \nyour account',
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
                      controller: _passwordController,
                      labelText: 'Password',
                      obscureText: true,
                      validator: passwordValidator,
                    ),
                    const AuthTextBtn(
                      btnText: 'Forget password',
                    ),
                    LogSignBTN(
                      buttonText: " Log In",
                      formKey: formKey,
                    ),
                    const LogSignOptions(
                      alternativeSignUpOptionTtx: 'Or Sign up with',
                    ),
                    const AuthTextBtn(
                      lineText: "Don't have an acount",
                      btnText: 'Sign Up',
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
