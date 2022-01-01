import 'package:flutter/material.dart';
import 'package:flutter_ppob/default/size_config.dart';
import 'package:flutter_ppob/widgets/home/carousel_slider.dart';
import 'package:flutter_ppob/widgets/home/header.dart';
import 'package:flutter_ppob/widgets/home/home_berita.dart';
import 'package:flutter_ppob/widgets/home/home_pasar.dart';
import 'package:flutter_ppob/widgets/home/home_produk_cuan.dart';
import 'package:flutter_ppob/widgets/home/menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomePageHeader(),
            HomeCarousel(),
            HomeMenu(),
            HomeProdukCuan(),
            HomePasar(),
            HomeBerita(),
            SizedBox(
              height: SizeConfig.safeBlockHorizontal * 100 / 3.6,
            ),
          ],
        ),
      ),
    );
  }
}
