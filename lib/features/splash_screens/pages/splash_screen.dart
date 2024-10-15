import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';
import 'package:gem_store_app/features/splash_screens/pages/intro_screen.dart';

class AppIntroScreen extends StatelessWidget {
  const AppIntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/intro_image.png',
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.blackColor.withOpacity(0.5),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(top: 100.0),
                  child: Text(
                    "Welcome to StyleSphere!",
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "The home for a fashionista",
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: .0, bottom: 50),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                          width: 1, color: AppColors.whiteColor),
                      foregroundColor: AppColors.whiteColor,
                      backgroundColor: AppColors.whiteColor.withOpacity(0.4),
                      textStyle: const TextStyle(fontSize: 20),
                      fixedSize: const Size(200, 60),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AppIntroScreen1(),
                        ),
                      );
                    },
                    child: const Text('Get Started'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
