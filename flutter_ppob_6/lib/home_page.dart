import 'package:flutter/material.dart';
import 'package:flutter_ppob_6/default/size_config.dart';
import 'package:flutter_ppob_6/widgets/home_balance.dart';
import 'package:flutter_ppob_6/widgets/home_berita.dart';
import 'package:flutter_ppob_6/widgets/home_menu.dart';
import 'package:flutter_ppob_6/widgets/home_pasar.dart';
import 'package:flutter_ppob_6/widgets/home_produk_cuan.dart';
import 'package:flutter_ppob_6/widgets/home_promo.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var safeVertical = SizeConfig.safeBlockVertical;
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          'Nama Server',
          style: GoogleFonts.poppins(
            fontSize: SizeConfig.safeBlockHorizontal * 14 / 3.6,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('tapped!');
            },
            icon: Icon(
              Icons.card_giftcard,
              color: Colors.white,
              size: SizeConfig.safeBlockHorizontal * 20 / 3.6,
            ),
          ),
          IconButton(
            onPressed: () {
              print('tapped2');
            },
            icon: Icon(
              Icons.chat_bubble,
              color: Colors.white,
              size: SizeConfig.safeBlockHorizontal * 20 / 3.6,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: SizeConfig.safeBlockVertical * 30 / 7.2,
              color: Colors.orange,
              width: SizeConfig.screenWidth,
              child: Marquee(
                text:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
                style: GoogleFonts.poppins(
                  fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                  color: Colors.white,
                ),
              ),
            ),
            HomeBalance(),
            HomeMenu(),
            SizedBox(
              height: safeVertical * 30 / 7.2,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  HomeProdukCuan(),
                  HomePromo(),
                  HomePasar(),
                  HomeBerita(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
