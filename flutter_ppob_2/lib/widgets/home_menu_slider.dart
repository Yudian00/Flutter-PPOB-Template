import 'package:flutter/material.dart';
import 'package:flutter_ppob_2/default/size_config.dart';

class HomeMenuSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      margin: EdgeInsets.only(
        top: SizeConfig.safeBlockVertical * 10 / 7.2,
      ),
      height: SizeConfig.safeBlockVertical * 100 / 7.2,
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
            Colors.orange,
            'Pulsa',
            Icons.phone_android,
            Colors.blue,
            Colors.purple,
          ),
          menuItem(
            Colors.orange,
            'PLN',
            Icons.lightbulb,
            Colors.orange[200]!,
            Colors.orange,
          ),
          menuItem(
            Colors.green,
            'BPJS',
            Icons.health_and_safety,
            Colors.green[200]!,
            Colors.green,
          ),
          menuItem(
            Colors.red,
            'PGN',
            Icons.local_fire_department_sharp,
            Colors.red[200]!,
            Colors.red,
          ),
          menuItem(
            Colors.blue,
            'PDAM',
            Icons.water,
            Colors.blue[200]!,
            Colors.blue,
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
        right: SizeConfig.safeBlockHorizontal * 30 / 3.6,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
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
          SizedBox(
            height: SizeConfig.blockSizeVertical * 10 / 7.2,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: SizeConfig.blockSizeVertical * 12 / 7.2,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
