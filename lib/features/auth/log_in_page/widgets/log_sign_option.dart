// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LogSignOptions extends StatelessWidget {
  final String alternativeSignUpOptionTtx;
  const LogSignOptions({
    super.key,
    required this.alternativeSignUpOptionTtx,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Column(
        children: [
          Text(alternativeSignUpOptionTtx),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/apple.png'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Image.asset('assets/images/google.png'),
              ),
              Image.asset('assets/images/facebook.png'),
            ],
          ),
        ],
      ),
    );
  }
}
