import 'package:flutter/material.dart';
import 'package:flutter_ppob_2/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.fromLTRB(
        SizeConfig.safeBlockHorizontal * 10 / 3.6,
        SizeConfig.safeBlockVertical * 20 / 7.2,
        SizeConfig.safeBlockHorizontal * 10 / 3.6,
        SizeConfig.safeBlockVertical * 20 / 7.2,
      ),
      height: SizeConfig.safeBlockVertical * 60 / 7.2,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: SizeConfig.safeBlockHorizontal * 5 / 3.6,
                  ),
                  Icon(
                    Icons.add_box_rounded,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: SizeConfig.safeBlockHorizontal * 5 / 3.6,
                  ),
                  Flexible(
                    child: Text(
                      'Tambah Saldo',
                      style: GoogleFonts.poppins(
                        fontSize: SizeConfig.safeBlockHorizontal * 8 / 3.6,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      maxLines: 2,
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 5,
            child: Container(
              child: Row(
                children: [
                  SizedBox(
                    width: SizeConfig.safeBlockHorizontal * 5 / 3.6,
                  ),
                  Icon(
                    Icons.account_balance_wallet_rounded,
                    color: Colors.blue,
                    size: SizeConfig.safeBlockHorizontal * 20 / 3.6,
                  ),
                  SizedBox(
                    width: SizeConfig.safeBlockHorizontal * 5 / 3.6,
                  ),
                  Text(
                    'Rp1.682.035.114',
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              child: Row(
                children: [
                  VerticalDivider(
                    width: 5,
                    color: Colors.grey,
                    indent: 5,
                    endIndent: 5,
                  ),
                  SizedBox(
                    width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                  ),
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
    );
  }
}
