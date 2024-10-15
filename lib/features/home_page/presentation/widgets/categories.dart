import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int _selectedCategory = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedCategory = 0;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: _selectedCategory == 0 ? Colors.brown : Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset('assets/images/female1.png'),
              ),
            ),
            Text(
              'Female',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 10.0,
                color: _selectedCategory == 0 ? Colors.brown : Colors.black,
              ),
            ),
          ],
        ),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedCategory = 1;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: _selectedCategory == 1 ? Colors.brown : Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset('assets/images/male.png'),
              ),
            ),
            Text(
              'Male',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 10.0,
                color: _selectedCategory == 1 ? Colors.brown : Colors.black,
              ),
            ),
          ],
        ),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedCategory = 2;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: _selectedCategory == 2 ? Colors.brown : Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset('assets/images/products.png'),
              ),
            ),
            Text(
              'Products',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 10.0,
                color: _selectedCategory == 2 ? Colors.brown : Colors.black,
              ),
            ),
          ],
        ),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _selectedCategory = 3;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: _selectedCategory == 3 ? Colors.brown : Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Image.asset('assets/images/beauty.png'),
              ),
            ),
            Text(
              'Beauty',
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 10.0,
                color: _selectedCategory == 3 ? Colors.brown : Colors.black,
              ),
            ),
          ],
        )
      ],
    );
  }
}
