import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_ppob/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.screenHeight / 3,
      width: SizeConfig.screenWidth,
      child: Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              height: SizeConfig.screenHeight / 3.6,
              width: SizeConfig.screenWidth,
              color: Colors.blue,
            ),
          ),
          Positioned(
            top: SizeConfig.safeBlockVertical * 120 / 7.2,
            left: 0,
            right: 0,
            child: userBalance(),
          ),
          Positioned(
            top: SizeConfig.safeBlockVertical * 30 / 7.2,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(SizeConfig.safeBlockVertical * 20 / 7.2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nama Pengguna',
                    style: GoogleFonts.poppins(
                      fontSize: SizeConfig.safeBlockHorizontal * 14 / 3.6,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: [
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget userBalance() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: SizeConfig.safeBlockHorizontal * 20 / 3.6,
      ),
      padding: EdgeInsets.fromLTRB(
          SizeConfig.safeBlockHorizontal * 15 / 3.6,
          SizeConfig.safeBlockVertical * 15 / 7.2,
          SizeConfig.safeBlockHorizontal * 15 / 3.6,
          0),
      height: SizeConfig.safeBlockVertical * 50 / 3.6,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '#0001',
                style: GoogleFonts.poppins(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.blockSizeVertical * 12 / 7.2,
                ),
              ),
              Text(
                'TOKO PULSA',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig.blockSizeVertical * 12 / 7.2,
                ),
              ),
            ],
          ),
          Divider(
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.account_balance_wallet_rounded,
                      color: Colors.blue,
                      size: SizeConfig.blockSizeVertical * 30 / 7.2),
                  SizedBox(
                    width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Saldo',
                        style: GoogleFonts.poppins(
                          fontSize: SizeConfig.blockSizeVertical * 10 / 7.2,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'Rp',
                            style: TextStyle(
                              fontSize: SizeConfig.blockSizeVertical * 7 / 7.2,
                              color: Colors.blue,
                            ),
                          ),
                          SizedBox(
                            width: SizeConfig.safeBlockHorizontal * 3 / 3.6,
                          ),
                          Text(
                            '1.682.000',
                            style: TextStyle(
                              fontSize: SizeConfig.blockSizeVertical * 14 / 7.2,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: SizeConfig.blockSizeVertical * 20 / 7.2,
                    width: SizeConfig.safeBlockHorizontal * 20 / 3.6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/linkaja.png',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeVertical * 10 / 7.2,
                  ),
                  Text(
                    'LinkAja',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.blockSizeVertical * 12 / 7.2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void test() {
    print('tap worked!');
  }
}
