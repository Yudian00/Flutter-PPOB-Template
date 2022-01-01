import 'package:flutter/material.dart';
import 'package:flutter_ppob/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterTextForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          style: GoogleFonts.poppins(
            fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
          ),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.mail,
              size: SizeConfig.safeBlockHorizontal * 15 / 3.6,
            ),
            contentPadding: EdgeInsets.only(
              left: SizeConfig.safeBlockHorizontal * 20 / 3.6,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintText: 'Email',
            hintStyle: TextStyle(
              color: Colors.black54,
              fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.safeBlockVertical * 20 / 7.2,
        ),
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
          height: SizeConfig.safeBlockVertical * 20 / 7.2,
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
          height: SizeConfig.safeBlockVertical * 20 / 7.2,
        ),
      ],
    );
  }
}
