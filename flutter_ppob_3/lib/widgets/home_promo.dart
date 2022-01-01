import 'package:flutter/material.dart';
import 'package:flutter_ppob_3/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePromo extends StatelessWidget {
  final List networkImage = [
    'https://upperline.id/uploads/images/image_750x_5f8a5a3a08d1e.jpg',
    'https://play-lh.googleusercontent.com/6PxB56wEjB0XIxNo3_lhrkxN7g4zzc-ZeMTs2KNk2iOK2iOqie9jUs5UC7qC9524Vg',
    'https://katalogpromosi.com/wp-content/uploads/2021/05/blibli-payday.jpg',
    'https://author.inibabad.com/themes/customilham/dist/crud/kcfinder/upload/images/November%202020/Gambar%202.jpg',
    'https://polytron.co.id//uploads/images/news//YW50aWtvZGVfXzE2MDIxMzI4NzdfaGlzdGVyaWEtMTAxMC1ibGlibGktYXV2aS1qcGc.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 20 / 3.6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Promo',
                style: GoogleFonts.poppins(
                  fontSize: SizeConfig.safeBlockHorizontal * 16 / 3.6,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Lihat Semua',
                style: GoogleFonts.poppins(
                  fontSize: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Container(
            margin:
                EdgeInsets.only(top: SizeConfig.blockSizeVertical * 5 / 7.2),
            height: SizeConfig.blockSizeVertical * 150 / 7.2,
            width: SizeConfig.screenWidth,
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (overscroll) {
                overscroll.disallowIndicator();
                return true;
              },
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    height: SizeConfig.blockSizeVertical * 150 / 7.2,
                    width: SizeConfig.safeBlockHorizontal * 120 / 3.6,
                    margin: EdgeInsets.fromLTRB(
                        0,
                        SizeConfig.safeBlockHorizontal * 10 / 3.6,
                        SizeConfig.safeBlockHorizontal * 10 / 3.6,
                        SizeConfig.safeBlockHorizontal * 10 / 3.6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          SizeConfig.safeBlockHorizontal * 10 / 3.6),
                      color: Colors.blue,
                      image: DecorationImage(
                        image: NetworkImage(networkImage[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
