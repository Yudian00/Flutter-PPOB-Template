import 'package:flutter/material.dart';
import 'package:flutter_ppob_5/default/size_config.dart';
import 'package:flutter_ppob_5/widgets/header.dart';
import 'package:flutter_ppob_5/widgets/home_berita.dart';
import 'package:flutter_ppob_5/widgets/home_carousel.dart';
import 'package:flutter_ppob_5/widgets/home_pasar.dart';
import 'package:flutter_ppob_5/widgets/home_produk_cuan.dart';
import 'package:flutter_ppob_5/widgets/menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var safeVertical = SizeConfig.safeBlockVertical;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomePageHeader(),
            SizedBox(height: safeVertical * 125 / 7.2),
            HomeCarousel(),
            HomeMenu(),
            HomeProdukCuan(),
            HomePasar(),
            HomeBerita(),
          ],
        ),
      ),
    );
  }
}
