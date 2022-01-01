import 'package:flutter/material.dart';
import 'package:flutter_ppob_4/default/color.dart';
import 'package:flutter_ppob_4/default/size_config.dart';
import 'package:flutter_ppob_4/widgets/home_berita.dart';
import 'package:flutter_ppob_4/widgets/home_carousel.dart';
import 'package:flutter_ppob_4/widgets/home_pasar.dart';
import 'package:flutter_ppob_4/widgets/home_produk_cuan.dart';
import 'package:flutter_ppob_4/widgets/home_produk_digital.dart';
import 'package:flutter_ppob_4/widgets/home_saldo.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ThemeColor.primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Nama Server',
          style: GoogleFonts.poppins(
            fontSize: SizeConfig.blockSizeHorizontal * 14 / 3.6,
            fontWeight: FontWeight.bold,
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
            HomeSaldo(),
            HomeProdukDigital(),
            HomeCarousel(),
            HomeProdukCuan(),
            HomePasar(),
            HomeBerita(),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 100 / 7.2,
            ),
          ],
        ),
      ),
    );
  }
}
