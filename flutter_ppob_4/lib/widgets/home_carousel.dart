import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ppob_4/default/size_config.dart';

class HomeCarousel extends StatelessWidget {
  final List<Widget> carouselList = [
    Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
          image: AssetImage('assets/images/banner.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      width: SizeConfig.screenWidth,
      height: SizeConfig.safeBlockVertical * 200 / 7.2,
    ),
    Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.safeBlockVertical * 200 / 7.2,
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
          image: AssetImage('assets/images/banner 2.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      width: SizeConfig.screenWidth,
      height: SizeConfig.safeBlockVertical * 200 / 7.2,
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
          image: AssetImage('assets/images/banner 3.jpeg'),
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.safeBlockVertical * 190 / 7.2,
      width: SizeConfig.screenWidth,
      color: Colors.grey[300],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: SizeConfig.safeBlockVertical * 150 / 7.2,
            width: SizeConfig.screenWidth,
            child: CarouselSlider(
              items: carouselList,
              options: CarouselOptions(
                height: SizeConfig.safeBlockVertical * 150 / 7.2,
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
