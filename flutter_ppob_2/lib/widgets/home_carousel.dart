import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ppob_2/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

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
      child: Column(
        children: [
          Flexible(
            child: Container(
              width: SizeConfig.screenWidth,
              color: Colors.blue[400],
              child: Marquee(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
                style: GoogleFonts.poppins(
                  fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                  color: Colors.white,
                ),
              ),
            ),
          ),
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
