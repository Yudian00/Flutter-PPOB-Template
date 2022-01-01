import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_ppob_5/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class HomePageHeader extends StatelessWidget {
  final safeHorizontal = SizeConfig.safeBlockHorizontal;
  final safeVertical = SizeConfig.safeBlockVertical;
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
              color: Colors.red,
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
                    'Nama Server',
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
      padding: EdgeInsets.only(
        top: SizeConfig.safeBlockVertical * 15 / 7.2,
      ),
      height: SizeConfig.safeBlockVertical * 130 / 3.6,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Flexible(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.safeBlockHorizontal * 15 / 3.6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.account_balance_wallet_rounded,
                          color: Colors.red,
                          size: SizeConfig.blockSizeVertical * 30 / 7.2),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
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
                                  fontSize:
                                      SizeConfig.blockSizeVertical * 7 / 7.2,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.safeBlockHorizontal * 3 / 3.6,
                              ),
                              Text(
                                '1.682.000',
                                style: TextStyle(
                                  fontSize:
                                      SizeConfig.blockSizeVertical * 14 / 7.2,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: safeVertical * 30 / 7.2,
                    width: safeVertical * 40 / 3.6,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(
                      child: Text(
                        '+ Top Up',
                        style: TextStyle(
                          fontSize: safeHorizontal * 10 / 3.6,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.safeBlockHorizontal * 15 / 3.6,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.crop_square_sharp,
                        color: Colors.purple,
                        size: SizeConfig.blockSizeVertical * 30 / 7.2,
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Saldo Kaspro',
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
                                  fontSize:
                                      SizeConfig.blockSizeVertical * 7 / 7.2,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                width: SizeConfig.safeBlockHorizontal * 3 / 3.6,
                              ),
                              Text(
                                '0',
                                style: TextStyle(
                                  fontSize:
                                      SizeConfig.blockSizeVertical * 14 / 7.2,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: safeVertical * 30 / 7.2,
                    width: safeVertical * 40 / 3.6,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Center(
                      child: Text(
                        'Detail',
                        style: TextStyle(
                          fontSize: safeHorizontal * 10 / 3.6,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Flexible(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(
                      'Label',
                      style: TextStyle(
                        fontSize: safeHorizontal * 10 / 3.6,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.store,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(
                      'Toko Saya',
                      style: TextStyle(
                        fontSize: safeHorizontal * 10 / 3.6,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.list_alt_outlined,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(
                      'Daftar Harga',
                      style: TextStyle(
                        fontSize: safeHorizontal * 10 / 3.6,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.person_add,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(
                      'Daftar Agen',
                      style: TextStyle(
                        fontSize: safeHorizontal * 10 / 3.6,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: SizeConfig.safeBlockVertical * 30 / 7.2,
            color: Colors.red,
            width: SizeConfig.screenWidth,
            child: Marquee(
              text:
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
              style: GoogleFonts.poppins(
                fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void test() {
    print('tap worked!');
  }
}
