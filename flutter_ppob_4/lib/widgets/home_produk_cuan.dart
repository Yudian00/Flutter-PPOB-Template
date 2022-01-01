import 'package:flutter/material.dart';
import 'package:flutter_ppob_4/default/color.dart';
import 'package:flutter_ppob_4/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeProdukCuan extends StatelessWidget {
  final List<String> listAsset = [
    'assets/icons/Asset 6.png',
    'assets/icons/Asset 5.png',
    'assets/icons/Asset 9.png',
    'assets/icons/Asset 2.png',
    'assets/icons/Asset 7.png',
    'assets/icons/Asset 3.png',
    'assets/icons/Asset 1.png',
    'assets/icons/Asset 10.png',
  ];

  final List<String> menuLabel = [
    'Pulsa',
    'Paket Data',
    'PDAM',
    'PLN',
    'WIFI',
    'BPJS',
    'e-Money',
    'e-Voucher',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Container(
          height: SizeConfig.safeBlockVertical * 50 / 7.2,
          width: SizeConfig.screenWidth,
          margin: EdgeInsets.all(
            SizeConfig.safeBlockHorizontal * 10 / 3.6,
          ),
          padding: EdgeInsets.all(
            SizeConfig.safeBlockHorizontal * 10 / 3.6,
          ),
          decoration: BoxDecoration(
            color: ThemeColor.primaryColor,
            borderRadius: BorderRadius.circular(
              SizeConfig.safeBlockHorizontal * 10 / 3.6,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Produk Cuan',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                ),
              ),
              Text(
                'Lihat Semua',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: SizeConfig.safeBlockVertical * 30 / 7.2,
        ),
        Container(
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowIndicator();
              return true;
            },
            child: GridView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisExtent: SizeConfig.safeBlockHorizontal * 90 / 3.6,
                crossAxisSpacing: SizeConfig.safeBlockVertical * 10 / 7.2,
                mainAxisSpacing: SizeConfig.safeBlockHorizontal * 10 / 3.6,
              ),
              itemCount: 5,
              itemBuilder: (_, index) => menuWidget(index),
            ),
          ),
        ),
      ],
    );
  }

  Widget menuWidget(int index) {
    return Container(
      height: SizeConfig.safeBlockVertical * 40 / 7.2,
      width: SizeConfig.safeBlockHorizontal * 40 / 3.6,
      child: Column(
        children: [
          Container(
            height: SizeConfig.safeBlockVertical * 30 / 7.2,
            width: SizeConfig.safeBlockHorizontal * 30 / 3.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(listAsset[index]),
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.safeBlockVertical * 10 / 7.2,
          ),
          Text(
            menuLabel[index],
            style: GoogleFonts.poppins(
              fontSize: SizeConfig.safeBlockHorizontal * 10 / 3.6,
            ),
          ),
        ],
      ),
    );
  }
}
