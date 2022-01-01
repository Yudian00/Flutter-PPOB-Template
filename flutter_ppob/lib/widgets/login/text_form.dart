import 'package:flutter/material.dart';
import 'package:flutter_ppob/default/custom_animation.dart';
import 'package:flutter_ppob/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTextForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return CustomAnimation2(
      delay: 1500,
      duration: 500,
      xOffset: 0,
      yOffset: 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            style: GoogleFonts.poppins(
              fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.person,
                size: SizeConfig.safeBlockHorizontal * 15 / 3.6,
              ),
              contentPadding: EdgeInsets.only(
                left: SizeConfig.safeBlockHorizontal * 20 / 3.6,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Username',
              hintStyle: TextStyle(
                color: Colors.black54,
                fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.safeBlockVertical * 15 / 7.2,
          ),
          TextField(
            obscureText: true,
            obscuringCharacter: '●',
            style: GoogleFonts.poppins(
              fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.lock,
                size: SizeConfig.safeBlockHorizontal * 15 / 3.6,
              ),
              contentPadding: EdgeInsets.only(
                  left: SizeConfig.safeBlockHorizontal * 20 / 3.6),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.black54,
                fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
              ),
            ),
          ),
          SizedBox(
            height: SizeConfig.safeBlockVertical * 15 / 7.2,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'Lupa Password?',
              style: TextStyle(
                fontSize: SizeConfig.safeBlockHorizontal * 10 / 3.6,
                color: Colors.black45,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
