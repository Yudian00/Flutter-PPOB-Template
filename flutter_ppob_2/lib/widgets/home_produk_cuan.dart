import 'package:flutter/material.dart';
import 'package:flutter_ppob_2/default/size_config.dart';

class HomeProdukCuan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.safeBlockVertical * 10 / 7.2,
      ),
      height: SizeConfig.safeBlockVertical * 120 / 7.2,
      width: SizeConfig.screenWidth,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: ClampingScrollPhysics(),
        children: [
          SizedBox(
            width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
          ),
          menuItem(
            Colors.blue,
            'Tiket Pesawat',
            Icons.airplane_ticket,
            Colors.blue[300]!,
            Colors.blue,
          ),
          SizedBox(
            width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
          ),
          menuItem(
            Colors.red,
            'Tiket Kereta Api',
            Icons.train,
            Colors.red[300]!,
            Colors.red,
          ),
          SizedBox(
            width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
          ),
          menuItem(
            Colors.green,
            'Kirim Uang',
            Icons.attach_money,
            Colors.green[300]!,
            Colors.green,
          ),
          SizedBox(
            width: SizeConfig.safeBlockHorizontal * 10 / 3.6,
          ),
        ],
      ),
    );
  }

  Widget menuItem(Color color, String label, IconData iconData,
      Color gradientBegin, Color gradientEnd) {
    return Padding(
      padding: EdgeInsets.only(
        right: SizeConfig.safeBlockHorizontal * 10 / 3.6,
      ),
      child: Container(
        margin: EdgeInsets.all(5),
        height: SizeConfig.safeBlockVertical * 120 / 7.2,
        width: SizeConfig.safeBlockHorizontal * 100 / 3.6,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical * 10 / 7.2,
            ),
            Expanded(
              flex: 4,
              child: Container(
                height: SizeConfig.safeBlockVertical * 50 / 7.2,
                width: SizeConfig.safeBlockHorizontal * 50 / 3.6,
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      gradientBegin,
                      gradientEnd,
                    ],
                    begin: const FractionalOffset(0.0, 0.0),
                    end: const FractionalOffset(2.0, 0.0),
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp,
                  ),
                ),
                child: Center(
                  child: Icon(
                    iconData,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 10 / 7.2,
            ),
            Expanded(
              flex: 2,
              child: Text(
                label,
                style: TextStyle(
                  fontSize: SizeConfig.blockSizeVertical * 10 / 7.2,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 10 / 7.2,
            ),
          ],
        ),
      ),
    );
  }
}
