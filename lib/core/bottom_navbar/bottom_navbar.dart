import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';
import 'package:gem_store_app/features/cart_page/pages/cart_pages.dart';
import 'package:gem_store_app/features/discover_page/pages/discover_page.dart';
import 'package:gem_store_app/features/home_page/pages/home_page.dart';
import 'package:gem_store_app/features/profile_page/pages/profile_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomePage(),
    const DiscoverPage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: _currentIndex == 0
                  ? ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        AppColors.bottomColor,
                        BlendMode.srcATop,
                      ),
                      child: Image.asset(
                        'assets/images/home.png',
                        width: 30,
                        height: 30,
                      ),
                    )
                  : Image.asset(
                      'assets/images/home.png',
                      width: 30,
                      height: 30,
                      color: AppColors.cardbackColor2,
                    ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 1
                  ? ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        AppColors.bottomColor,
                        BlendMode.srcATop,
                      ),
                      child: Image.asset(
                        'assets/images/discover.png',
                        width: 30,
                        height: 30,
                      ),
                    )
                  : Image.asset(
                      'assets/images/discover.png',
                      width: 30,
                      height: 30,
                      color: AppColors.cardbackColor2,
                    ),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 2
                  ? ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        AppColors.bottomColor,
                        BlendMode.srcATop,
                      ),
                      child: Image.asset(
                        'assets/images/cart.png',
                        width: 30,
                        height: 30,
                      ),
                    )
                  : Image.asset(
                      'assets/images/cart.png',
                      width: 30,
                      height: 30,
                      color: AppColors.cardbackColor2,
                    ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: _currentIndex == 3
                  ? ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        AppColors.bottomColor,
                        BlendMode.srcATop,
                      ),
                      child: Image.asset(
                        'assets/images/profile.png',
                        width: 30,
                        height: 30,
                      ),
                    )
                  : Image.asset(
                      'assets/images/profile.png',
                      width: 30,
                      height: 30,
                      color: AppColors.cardbackColor2,
                    ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
