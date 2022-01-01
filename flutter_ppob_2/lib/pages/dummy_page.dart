import 'package:flutter/material.dart';
import 'package:flutter_ppob_2/default/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class DummyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.screenHeight * 0.2,
                ),
                Center(
                  child: Container(
                    height: SizeConfig.safeBlockVertical * 300 / 7.2,
                    width: SizeConfig.safeBlockHorizontal * 300 / 3.6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/pair_programming.png'),
                      ),
                    ),
                  ),
                ),
                Text(
                  'Halaman Belum Tersedia',
                  style: GoogleFonts.poppins(
                    fontSize: SizeConfig.safeBlockHorizontal * 16 / 3.6,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 10 / 7.2,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.safeBlockHorizontal * 20 / 3.6),
                  child: Text(
                    'Halaman masih dalam proses perancangan. Stay tuned!',
                    style: GoogleFonts.poppins(
                      fontSize: SizeConfig.safeBlockHorizontal * 12 / 3.6,
                      color: Colors.black45,
                    ),
                    textAlign: TextAlign.center,
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
