import 'package:flutter/material.dart';
import 'package:flutter_ppob_6/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePromo extends StatelessWidget {
  final List networkImage = [
    'https://asset-a.grid.id/crop/0x0:0x0/x/photo/2021/09/03/shopee-jackie-chanjpg-20210903112650.jpg',
    'https://shopee.co.id/inspirasi-shopee/wp-content/uploads/2019/10/11.11-Big-Sale-2019_ShopeeID_FINAL-Orange-Background-1B.jpg',
    'https://cdn0-production-images-kly.akamaized.net/C5GOKIwWJw_2f7Lzj-gQtk3oU_0=/640x480/smart/filters:quality(75):strip_icc():format(jpeg)/kly-media-production/medias/3321402/original/042239100_1607672390-Siap-Siap__Promo_Puncak_Shopee_12.12_Birthday_Sale_Bakal_Hadirkan_Sederet_Penawaran_Menarik_Lho.jpg',
    'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/01/24/2734493336.jpg',
    'https://2.bp.blogspot.com/-uU8klFgRyy4/W-DC31x0WDI/AAAAAAAAJIo/YdVRV6-z7egjpyei_Veo3qRYdJx9sL2ywCLcBGAs/s1600/Shopee-1111-gratis-ongkir.jpg',
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
                  color: Colors.orange,
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
                      color: Colors.orange,
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
