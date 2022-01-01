import 'package:flutter/material.dart';
import 'package:flutter_ppob_4/default/color.dart';
import 'package:flutter_ppob_4/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class HomeSaldo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Container(
          height: SizeConfig.safeBlockVertical * 30 / 7.2,
          width: SizeConfig.screenWidth,
          color: ThemeColor.secondaryColor,
          child: Marquee(
            text:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur',
            style: GoogleFonts.poppins(
              fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight * 0.25,
          decoration: BoxDecoration(
            color: ThemeColor.primaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  height: SizeConfig.safeBlockVertical * 40 / 7.2,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                  ),
                  decoration: BoxDecoration(
                    color: ThemeColor.secondaryColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '#0001',
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'TOKO PULSA',
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.account_balance_wallet_rounded,
                            color: Colors.white,
                            size: SizeConfig.safeBlockHorizontal * 30 / 3.6,
                          ),
                          SizedBox(
                            width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Saldo',
                                style: TextStyle(
                                  fontSize:
                                      SizeConfig.safeBlockHorizontal * 10 / 3.6,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Rp',
                                    style: TextStyle(
                                      fontSize: SizeConfig.safeBlockHorizontal *
                                          10 /
                                          3.6,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '1.682.039.114',
                                    style: TextStyle(
                                      fontSize: SizeConfig.safeBlockHorizontal *
                                          14 /
                                          3.6,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                          ),
                          Text(
                            'LinkAja',
                            style: TextStyle(
                              fontSize:
                                  SizeConfig.safeBlockHorizontal * 10 / 3.6,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                indent: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                endIndent: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                color: Colors.white,
              ),
              Flexible(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal * 5 / 7.2,
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.money,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: SizeConfig.safeBlockHorizontal * 10 / 7.2,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Saldo',
                                  style: TextStyle(
                                    fontSize: SizeConfig.safeBlockHorizontal *
                                        8 /
                                        3.6,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '3.500',
                                  style: TextStyle(
                                    fontSize: SizeConfig.safeBlockHorizontal *
                                        12 /
                                        3.6,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.white,
                        thickness: 2,
                        indent: SizeConfig.safeBlockVertical * 5 / 7.2,
                        endIndent: SizeConfig.safeBlockVertical * 5 / 7.2,
                      ),
                      Flexible(
                        flex: 3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.attach_money,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: SizeConfig.safeBlockHorizontal * 10 / 7.2,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Komisi',
                                  style: TextStyle(
                                    fontSize: SizeConfig.safeBlockHorizontal *
                                        8 /
                                        3.6,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '500',
                                  style: TextStyle(
                                    fontSize: SizeConfig.safeBlockHorizontal *
                                        12 /
                                        3.6,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      VerticalDivider(
                        color: Colors.white,
                        thickness: 2,
                        indent: SizeConfig.safeBlockVertical * 5 / 7.2,
                        endIndent: SizeConfig.safeBlockVertical * 5 / 7.2,
                      ),
                      Flexible(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.add_circle,
                              size: 15,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: SizeConfig.safeBlockHorizontal * 10 / 7.2,
                            ),
                            Text(
                              'Isi Saldo',
                              style: TextStyle(
                                fontSize:
                                    SizeConfig.safeBlockHorizontal * 12 / 3.6,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
