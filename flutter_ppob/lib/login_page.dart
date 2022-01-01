import 'package:flutter/material.dart';
import 'package:flutter_ppob/default/custom_animation.dart';
import 'package:flutter_ppob/default/size_config.dart';
import 'package:flutter_ppob/register_page.dart';
import 'package:flutter_ppob/widgets/bottom_nav_bar.dart';
import 'package:flutter_ppob/widgets/login/text_form.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class LoginPage extends StatelessWidget {
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // animation box
                CustomAnimation(
                  child: Container(
                    height: SizeConfig.screenHeight * .3,
                    width: SizeConfig.screenWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('assets/images/login.png'),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: SizeConfig.safeBlockHorizontal * 30 / 3.6,
                ),

                // Title Text
                CustomAnimation2(
                  delay: 500,
                  xOffset: -50,
                  child: Text(
                    'LOGIN',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: SizeConfig.safeBlockHorizontal * 35 / 3.6,
                    ),
                  ),
                ),

                // Description text
                CustomAnimation2(
                  delay: 1000,
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.safeBlockHorizontal * 30 / 3.6),
                    child: Text(
                      'Masuk dengan akun yang sudah ada',
                      style: GoogleFonts.poppins(
                        color: Colors.black54,
                        height: SizeConfig.safeBlockHorizontal * 2 / 3.6,
                        fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: SizeConfig.safeBlockVertical * 20 / 7.2,
                ),

                LoginTextForm(),

                SizedBox(
                  height: SizeConfig.safeBlockVertical * 20 / 7.2,
                ),

                CustomAnimation2(
                  delay: 2000,
                  duration: 500,
                  xOffset: 0,
                  yOffset: 50,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.blue[300]!,
                        Colors.blue,
                      ]),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shadowColor: Colors.transparent,
                        elevation: 0.0,
                        minimumSize: Size(
                          SizeConfig.screenWidth,
                          SizeConfig.safeBlockHorizontal * 40 / 3.6,
                        ),
                        primary: Colors.transparent,
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
                          'LOGIN',
                          style: TextStyle(
                            fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: SizeConfig.safeBlockVertical * 80 / 7.2,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.rightToLeft,
                        child: RegisterPage(),
                      ),
                    );
                  },
                  child: CustomAnimation2(
                    delay: 2500,
                    duration: 500,
                    xOffset: 0,
                    yOffset: 50,
                    child: Center(
                      child: Container(
                        height: SizeConfig.safeBlockVertical * 40 / 7.2,
                        width: SizeConfig.safeBlockHorizontal * 200 / 3.6,
                        child: Center(
                          child: Text(
                            'Belum punya akun?',
                            style: GoogleFonts.poppins(
                              fontSize:
                                  SizeConfig.safeBlockHorizontal * 12 / 3.6,
                              fontWeight: FontWeight.bold,
                              color: Colors.black45,
                            ),
                          ),
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
