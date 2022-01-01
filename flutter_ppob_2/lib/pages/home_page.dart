import 'package:flutter/material.dart';
import 'package:flutter_ppob_2/default/size_config.dart';
import 'package:flutter_ppob_2/widgets/home_berita.dart';
import 'package:flutter_ppob_2/widgets/home_carousel.dart';
import 'package:flutter_ppob_2/widgets/home_header.dart';
import 'package:flutter_ppob_2/widgets/home_menu_slider.dart';
import 'package:flutter_ppob_2/widgets/home_pasar.dart';
import 'package:flutter_ppob_2/widgets/home_produk_cuan.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HomeCarousel(),
            HomeHeader(),
            HomeMenuSlider(),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 30 / 7.2,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Produk Cuan',
                style: GoogleFonts.poppins(
                  fontSize: SizeConfig.safeBlockHorizontal * 16 / 3.6,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            HomeProdukCuan(),
            HomePasar(),
            HomeBerita(),
          ],
        ),
      ),
    );
  }
}
