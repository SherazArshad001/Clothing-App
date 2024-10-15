import 'package:flutter/material.dart';
import 'package:gem_store_app/core/common/app_colors/app_colors.dart';
import 'package:gem_store_app/features/cart_page/presentation/widgets/cart_provider.dart';
import 'package:gem_store_app/features/splash_screens/presentation/pages/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.backgroundColor,
      ),
      home: const AppIntroScreen(),
    );
  }
}
