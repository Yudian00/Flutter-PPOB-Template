import 'package:flutter/material.dart';
import 'package:flutter_ppob_6/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBalance extends StatelessWidget {
  const HomeBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    var safeHorizontal = SizeConfig.safeBlockHorizontal;
    var safeVertical = SizeConfig.safeBlockVertical;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: SizeConfig.safeBlockVertical * 20 / 7.2,
        horizontal: SizeConfig.safeBlockHorizontal * 20 / 3.6,
      ),
      padding: EdgeInsets.fromLTRB(
          SizeConfig.safeBlockHorizontal * 15 / 3.6,
          SizeConfig.safeBlockVertical * 15 / 7.2,
          SizeConfig.safeBlockHorizontal * 15 / 3.6,
          0),
      height: SizeConfig.safeBlockVertical * 80 / 3.6,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        gradient: LinearGradient(
          colors: [
            Colors.orange,
            Colors.white,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 5,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.account_balance_wallet_rounded,
                        color: Colors.white,
                        size: SizeConfig.blockSizeVertical * 30 / 7.2),
                    SizedBox(
                      width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Saldo',
                          style: GoogleFonts.poppins(
                            fontSize: SizeConfig.blockSizeVertical * 10 / 7.2,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Rp',
                              style: TextStyle(
                                fontSize:
                                    SizeConfig.blockSizeVertical * 7 / 7.2,
                                color: Colors.white,
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
                                color: Colors.white,
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
                    color: Colors.orange,
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
          Divider(
            thickness: 2,
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.circle,
                        color: Colors.white,
                        size: SizeConfig.blockSizeVertical * 30 / 7.2),
                    SizedBox(
                      width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Saldo Kaspiro',
                          style: GoogleFonts.poppins(
                            fontSize: SizeConfig.blockSizeVertical * 10 / 7.2,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Rp',
                              style: TextStyle(
                                fontSize:
                                    SizeConfig.blockSizeVertical * 7 / 7.2,
                                color: Colors.white,
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
                                color: Colors.white,
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
        ],
      ),
    );
  }
}
