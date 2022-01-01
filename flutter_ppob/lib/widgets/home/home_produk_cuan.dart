import 'package:flutter/material.dart';
import 'package:flutter_ppob/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeProdukCuan extends StatelessWidget {
  final List<String> listAsset = [
    'assets/icons/Pulsa.png',
    'assets/icons/Paket_Data.png',
    'assets/icons/PDAM.png',
    'assets/icons/PLN.png',
    'assets/icons/Wifi.png',
    'assets/icons/BPJS.png',
    'assets/icons/e_money.png',
    'assets/icons/e_voucher.png',
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
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 20 / 7.2),
      padding: EdgeInsets.fromLTRB(
          SizeConfig.safeBlockHorizontal * 20 / 3.6,
          SizeConfig.safeBlockVertical * 20 / 7.2,
          SizeConfig.safeBlockHorizontal * 20 / 3.6,
          0),
      height: SizeConfig.screenHeight * 0.45,
      width: SizeConfig.screenWidth,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Produk Cuan',
                    style: GoogleFonts.poppins(
                      fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Nikmati layanan digital',
                    style: GoogleFonts.poppins(
                      color: Colors.black45,
                      fontSize: SizeConfig.safeBlockHorizontal * 9 / 3.6,
                    ),
                  ),
                ],
              ),
              Text(
                'Lihat Semua',
                style: GoogleFonts.poppins(
                  color: Colors.blue,
                  fontSize: SizeConfig.safeBlockHorizontal * 9 / 3.6,
                ),
              ),
            ],
          ),
          NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowIndicator();
              return true;
            },
            child: GridView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4, mainAxisExtent: 90),
              itemCount: 5,
              itemBuilder: (_, index) => menuWidget(index),
            ),
          )
        ],
      ),
    );
  }

  Widget menuWidget(int index) {
    return Container(
      height: SizeConfig.safeBlockVertical * 50 / 7.2,
      width: SizeConfig.safeBlockHorizontal * 50 / 3.6,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            height: SizeConfig.safeBlockVertical * 35 / 7.2,
            width: SizeConfig.safeBlockHorizontal * 35 / 3.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              image: DecorationImage(
                image: AssetImage(listAsset[index]),
              ),
              color: Colors.white,
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
