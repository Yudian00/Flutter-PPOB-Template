import 'package:flutter/material.dart';
import 'package:flutter_ppob_3/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMenu extends StatelessWidget {
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
    return Padding(
      padding: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 50 / 7.2),
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
          itemCount: 8,
          itemBuilder: (_, index) => menuWidget(index),
        ),
      ),
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
