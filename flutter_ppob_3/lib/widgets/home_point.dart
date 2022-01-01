import 'package:flutter/material.dart';
import 'package:flutter_ppob_3/default/size_config.dart';

class HomePoint extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: SizeConfig.safeBlockVertical * 60 / 7.2,
      width: SizeConfig.screenWidth,
      color: Colors.grey[300],
      child: Row(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              child: Row(
                children: [
                  SizedBox(
                    width: SizeConfig.safeBlockHorizontal * 20 / 3.6,
                  ),
                  Icon(
                    Icons.qr_code,
                    color: Colors.black54,
                  ),
                  SizedBox(
                    width: SizeConfig.safeBlockHorizontal * 5 / 3.6,
                  ),
                  Text(
                    'Scan',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                    ),
                  ),
                ],
              ),
            ),
          ),
          VerticalDivider(
            thickness: 2,
          ),
          Flexible(
            flex: 3,
            child: Container(
              child: Row(
                children: [
                  SizedBox(
                    width: SizeConfig.safeBlockHorizontal * 20 / 3.6,
                  ),
                  Icon(
                    Icons.account_balance_rounded,
                  ),
                  SizedBox(
                    width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Poin',
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                        ),
                      ),
                      Text(
                        '3.600',
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              child: Row(
                children: [
                  Text(
                    'Tukarkan Poin',
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                    ),
                  ),
                  Icon(
                    Icons.arrow_right,
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
