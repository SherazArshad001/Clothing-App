// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:gem_store_app/core/common/widgets/appbar.dart';
import 'package:gem_store_app/features/auth/home_page/widgets/categories.dart';
import 'package:gem_store_app/features/auth/home_page/widgets/product_detail_card.dart';
import 'package:gem_store_app/features/auth/home_page/widgets/home_main_card.dart';
import 'package:gem_store_app/features/auth/home_page/widgets/itemcards.dart';
import 'package:gem_store_app/features/auth/home_page/widgets/recommend_product.dart';
import 'package:gem_store_app/features/auth/home_page/widgets/see_all_btn.dart';
import 'package:gem_store_app/features/auth/home_page/widgets/two_model_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(pageNmae: 'StyleSphere'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Categories(),
              ),
              SizedBox(
                height: 20,
              ),
              HomeMainCard(),
              SeeAllProduct(
                pageRecommend: 'Feature  Product',
                seeAllBtn: 'See All',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductDetailCard(
                      imagePath: 'assets/images/image1.png',
                      title: 'Turtleneck Sweater ',
                      price: 39.99,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: ProductDetailCard(
                        imagePath: 'assets/images/image2.png',
                        title: 'Long Sleeve Dress',
                        price: 50.50,
                      ),
                    ),
                    ProductDetailCard(
                      imagePath: 'assets/images/image3.png',
                      title: 'Turtleneck Sweater ',
                      price: 45.99,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ItemCard(
                  imagesUrl: 'assets/images/image4.png',
                  imageTitle: 'NEW COLLECTION',
                  imageDetail: 'HANG OUT \n& PARTY',
                ),
              ),
              SeeAllProduct(
                pageRecommend: 'Recommended',
                seeAllBtn: 'See All',
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    RecommendProductCard(
                      recomendProductImgUrl: 'assets/images/image10.png',
                      recommendProductPrice: '29.00',
                      recommendProductName: 'White fashion hodie',
                    ),
                    RecommendProductCard(
                      recomendProductImgUrl: 'assets/images/image8.png',
                      recommendProductPrice: '30.00',
                      recommendProductName: 'Cotton fashion hodie',
                    ),
                  ],
                ),
              ),
              SeeAllProduct(
                pageRecommend: 'Top Collection',
                seeAllBtn: 'See All',
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ItemCard(
                  imagesUrl: 'assets/images/image7.png',
                  imageTitle: 'SALE UPTO 40%',
                  imageDetail: 'FOR SLIM \n& BEAUTY',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ItemCard(
                  imagesUrl: 'assets/images/image5.png',
                  imageTitle: 'NEW COLLECTION',
                  imageDetail: 'MOST SEXY\n& FABULOUS \nDESIGN',
                ),
              ),
              TwoModelCard()
            ],
          ),
        ),
      ),
    );
  }
}
