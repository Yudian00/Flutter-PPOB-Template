import 'package:flutter/material.dart';
import 'package:flutter_ppob_4/default/size_config.dart';
import 'package:flutter_ppob_4/widgets/bottom_nav_bar.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CustomBottomNavbar()),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: SizeConfig.safeBlockHorizontal * 200 / 3.6,
              width: SizeConfig.safeBlockHorizontal * 200 / 3.6,
              child: FlutterLogo(),
            ),
          ],
        ),
      ),
    );
  }
}
