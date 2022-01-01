import 'package:flutter/material.dart';
import 'package:flutter_ppob_3/default/size_config.dart';
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
          color: Colors.blue[400],
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
          height: SizeConfig.safeBlockVertical * 100 / 7.2,
          width: SizeConfig.screenWidth,
          child: Row(
            children: [
              Flexible(
                flex: 3,
                child: Container(
                  height: SizeConfig.safeBlockVertical * 50 / 7.2,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                          SizeConfig.safeBlockHorizontal * 20 / 3.6),
                      bottomRight: Radius.circular(
                          SizeConfig.safeBlockHorizontal * 20 / 3.6),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                      ),
                      Flexible(
                        flex: 2,
                        child: Text(
                          'Tambah Saldo',
                          style: TextStyle(
                            fontSize: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 2,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                      ),
                      Flexible(
                        flex: 1,
                        child: Icon(
                          Icons.add_circle,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
              ),
              Flexible(
                flex: 5,
                child: Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_balance_wallet_rounded,
                        color: Colors.blue,
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
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Rp',
                                style: TextStyle(
                                  fontSize:
                                      SizeConfig.safeBlockHorizontal * 10 / 3.6,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '1.682.039.114',
                                style: TextStyle(
                                  fontSize:
                                      SizeConfig.safeBlockHorizontal * 14 / 3.6,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              VerticalDivider(
                thickness: 2,
                indent: SizeConfig.safeBlockVertical * 20 / 7.2,
                endIndent: SizeConfig.safeBlockVertical * 20 / 7.2,
              ),
              Flexible(
                flex: 3,
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        height: SizeConfig.safeBlockVertical * 30 / 7.2,
                        width: SizeConfig.safeBlockHorizontal * 30 / 3.6,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/linkaja.png'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                      ),
                      Text(
                        'LinkAja',
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
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
