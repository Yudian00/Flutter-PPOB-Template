import 'package:flutter/material.dart';
import 'package:flutter_ppob/default/size_config.dart';
import 'package:flutter_ppob/widgets/bottom_nav_bar.dart';
import 'package:flutter_ppob/widgets/register/text_form.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black87,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: SizeConfig.safeBlockHorizontal * 25 / 3.6,
                ),
                Center(
                  child: Text(
                    'Let\'s Get Started',
                    style: GoogleFonts.poppins(
                      fontSize: SizeConfig.safeBlockHorizontal * 25 / 3.6,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Daftar baru untuk mengakses aplikasi',
                  style: GoogleFonts.poppins(
                    fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.safeBlockHorizontal * 25 / 3.6,
                ),
                RegisterTextForm(),
                SizedBox(
                  height: SizeConfig.safeBlockHorizontal * 25 / 3.6,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.blue[300]!,
                      Colors.blue,
                    ]),
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.transparent,
                      primary: Colors.transparent,
                      elevation: 0.0,
                      minimumSize: Size(
                        SizeConfig.screenWidth,
                        SizeConfig.safeBlockHorizontal * 40 / 3.6,
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.rightToLeft,
                          child: CustomBottomNavbar(),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                          fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
