import 'package:flutter/material.dart';
import 'package:food_app_2/contants.dart';

import '../../demo_data.dart';
import 'compons/image_cursa.dart';
import 'compons/meduim_image.dart';
import 'compons/section_title.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: Column(
              children: [
                Text(
                  'delivery to'.toUpperCase(),
                  style: TextStyle(
                      color: kActiveColor, fontSize: defaultPadding - 3),
                ),
                Text(
                  'San Francisoc',
                  style: Theme.of(context).textTheme.headline6,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Filter',
                    style: TextStyle(
                      color: kMainColor,
                    ),
                  ))
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCurs(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: TitleSection(
                title: 'Featured Partenerd',
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoMediumCardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: ResturantImageInfo(
                      image: demoMediumCardData[index]['image'],
                      title: demoMediumCardData[index]['name'],
                      location: demoMediumCardData[index]['location'],
                      deliveryTime: demoMediumCardData[index]['delivertTime'],
                      rating: demoMediumCardData[index]['rating'],
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: Image.asset('images/Banner.png'),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: TitleSection(
                title: 'Featured Partenerd',
                press: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  demoMediumCardData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: defaultPadding),
                    child: ResturantImageInfo(
                      image: demoMediumCardData[index]['image'],
                      title: demoMediumCardData[index]['name'],
                      location: demoMediumCardData[index]['location'],
                      deliveryTime: demoMediumCardData[index]['delivertTime'],
                      rating: demoMediumCardData[index]['rating'],
                      press: () {},
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
