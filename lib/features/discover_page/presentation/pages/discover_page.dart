// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:gem_store_app/core/common/app_colors/app_colors.dart';
import 'package:gem_store_app/core/common/widgets/appbar.dart';
import 'package:gem_store_app/features/discover_page/presentation/pages/dresses_page.dart';
import 'package:gem_store_app/features/discover_page/presentation/widgets/discover_card.dart';
import 'package:gem_store_app/features/discover_page/presentation/widgets/list_tile.dart';
import 'package:gem_store_app/features/discover_page/presentation/widgets/textfield_filter.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  bool _isCard1Selected = false;
  // bool _isCard2Selected = false;
  // bool _isCard3Selected = false;
  // bool _isCard4Selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        pageNmae: 'Discover',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15.0,
          horizontal: 25,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const TextFieldFilter(),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _isCard1Selected = !_isCard1Selected;
                        });
                      },
                      child: DiscoverCaeds.discoverCards(
                        cardText: _isCard1Selected ? 'CLOTHING' : '',
                        imageUrl: 'assets/images/mask.png',
                        cardColor: AppColors.cardbackColor1,
                      ),
                    ),
                    if (_isCard1Selected)
                      Column(
                        children: [
                          CustomListTile(
                            listTitle: 'Dresses',
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration:
                                      const Duration(milliseconds: 500),
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      const DressesPage(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    const begin = Offset(
                                      1.0,
                                      0.0,
                                    );
                                    const end = Offset.zero;
                                    const curve = Curves.ease;

                                    var tween = Tween(begin: begin, end: end)
                                        .chain(CurveTween(curve: curve));
                                    return SlideTransition(
                                      position: animation.drive(tween),
                                      child: child,
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                          CustomListTile(
                            listTitle: 'Skirts',
                            onTap: () {},
                          ),
                          CustomListTile(
                            listTitle: 'Jacket',
                            onTap: () {},
                          ),
                          CustomListTile(
                            listTitle: 'T-Shirts',
                            onTap: () {},
                          ),
                          CustomListTile(
                            listTitle: 'Pants',
                            onTap: () {},
                          ),
                        ],
                      ),
                    const DiscoverCaeds.discoverCards(
                      imageUrl: 'assets/images/mask2.png',
                      cardColor: AppColors.cardbackColor2,
                    ),
                    const DiscoverCaeds.discoverCards(
                      imageUrl: 'assets/images/mask3.png',
                      cardColor: AppColors.cardbackColor3,
                    ),
                    const DiscoverCaeds.discoverCards(
                      imageUrl: 'assets/images/mask4.png',
                      cardColor: AppColors.cardbackColor4,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
