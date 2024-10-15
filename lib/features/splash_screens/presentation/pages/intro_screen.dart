import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';
import 'package:gem_store_app/features/auth/sign_up_page/presentation/pages/sign_up.dart';
import 'package:gem_store_app/features/splash_screens/presentation/widgets/intro_button.dart';
import 'package:gem_store_app/features/splash_screens/presentation/widgets/intro_content.dart';
import 'package:gem_store_app/features/splash_screens/presentation/widgets/intro_dot.dart';

class AppIntroScreen1 extends StatefulWidget {
  const AppIntroScreen1({super.key});

  @override
  State<AppIntroScreen1> createState() => _AppIntroScreen1State();
}

class _AppIntroScreen1State extends State<AppIntroScreen1> {
  int _currentIndex = 0;
  final _pageController = PageController();

  void _onButtonPressed() {
    if (_currentIndex < content.length - 1) {
      _pageController.nextPage(
          duration: const Duration(milliseconds: 500), curve: Curves.bounceIn);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SignUpPage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayColor,
      body: PageView.builder(
        controller: _pageController,
        itemCount: content.length,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        itemBuilder: (index, i) {
          return Stack(
            children: [
              Container(
                width: double.infinity,
                height: 600,
                color: AppColors.whiteColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Column(
                    children: [
                      Text(
                        content[i].title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.blackColor,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        content[i].description,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 250,
                left: 70,
                right: 70,
                child: Container(
                  height: 550,
                  decoration: BoxDecoration(
                    color: AppColors.cardbackColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset(
                    content[i].image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IntroSwipeDot(
                            isActive: 0 == _currentIndex,
                          ),
                          IntroSwipeDot(
                            isActive: 1 == _currentIndex,
                          ),
                          IntroSwipeDot(
                            isActive: 2 == _currentIndex,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      IntroButton(
                        currentScreen: _currentIndex,
                        onPressed: _onButtonPressed,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
