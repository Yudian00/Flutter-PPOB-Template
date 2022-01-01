import 'package:flutter/material.dart';
import 'package:flutter_ppob_3/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBerita extends StatelessWidget {
  final List listBerita = [
    'https://images.pexels.com/photos/2246258/pexels-photo-2246258.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/2559749/pexels-photo-2559749.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/7150986/pexels-photo-7150986.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/163016/crash-test-collision-60-km-h-distraction-163016.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
    'https://images.pexels.com/photos/78793/automotive-defect-broken-car-wreck-78793.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(top: SizeConfig.safeBlockVertical * 20 / 7.2),
      padding: EdgeInsets.all(20),
      height: SizeConfig.safeBlockVertical * 300 / 7.2,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Berita Terkini',
            style: GoogleFonts.poppins(
              fontSize: SizeConfig.safeBlockHorizontal * 16 / 3.6,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: SizeConfig.safeBlockVertical * 20 / 7.2,
          ),
          Container(
            height: SizeConfig.safeBlockVertical * 200 / 7.2,
            width: SizeConfig.screenWidth,
            // color: Colors.red,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: ClampingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  height: SizeConfig.safeBlockVertical * 150 / 7.2,
                  width: SizeConfig.safeBlockHorizontal * 200 / 3.6,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    // color: Colors.blue,
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: SizeConfig.safeBlockVertical * 130 / 7.2,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          // color: Colors.blue[200],
                          image: DecorationImage(
                            image: NetworkImage(listBerita[index]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          'Judul Berita',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
