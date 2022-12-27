import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/widgets/tab_widget.dart';
import 'package:food_app/widgets/food_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final foods = [
    [
      'Avocado and Egg Toast',
      'assets/images/food1.png',
      4.9,
      '120 reviews',
      10.40,
    ],
    [
      'Mac and Cheese',
      'assets/images/food2.png',
      4.9,
      '120 reviews',
      10.40,
    ],
    [
      'Power bowl',
      'assets/images/food3.png',
      4.9,
      '120 reviews',
      10.40,
    ],
    [
      'vegetable Salad',
      'assets/images/food4.png',
      4.9,
      '120 reviews',
      10.40,
    ],
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/images/location-point.svg',
              width: size * 0.055,
            ),
            SizedBox(
              width: size * 0.010,
            ),
            Text(
              'Gram Bistro',
              style: GoogleFonts.poppins(
                fontSize: size * 0.040,
                color: Colors.grey[400],
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: SvgPicture.asset(
              'assets/images/menu 2.svg',
              width: size * 0.060,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 20.0,
              ),
              child: Text(
                'We think you might enjoy these specially selected dishes',
                style: GoogleFonts.poppins(
                  fontSize: size * 0.050,
                  color: AppTheme.purpleText,
                ),
              ),
            ),
            SizedBox(
              height: size * 0.020,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TabWidget(
                    size: size,
                    text: 'Eat',
                    color: AppTheme.lightColor,
                  ),
                  TabWidget(
                    size: size,
                    text: 'Drink',
                  ),
                  TabWidget(
                    size: size,
                    text: 'Dessert',
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.1),
                    ),
                    child: SvgPicture.asset(
                      'assets/images/list.svg',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size * 0.050,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: double.infinity,
                // height: 500,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    return FoodWidget(
                      size: size,
                      foodName: foods[index][0].toString(),
                      image: foods[index][1].toString(),
                      price: double.parse(foods[index][4].toString()),
                      star: double.parse(foods[index][2].toString()),
                      review: foods[index][3].toString(),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
