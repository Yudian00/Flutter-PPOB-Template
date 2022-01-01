import 'package:flutter/material.dart';
import 'package:flutter_ppob_6/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeMenu extends StatelessWidget {
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
    var safeHorizontal = SizeConfig.safeBlockHorizontal;
    var safeVertical = SizeConfig.safeBlockVertical;
    return Container(
      height: safeVertical * 100 / 7.2,
      width: double.infinity,
      color: Colors.orange,
      child: ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
          height: safeVertical * 40 / 7.2,
          width: safeHorizontal * 90 / 3.6,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
        ),
      ),
    );
  }
}
