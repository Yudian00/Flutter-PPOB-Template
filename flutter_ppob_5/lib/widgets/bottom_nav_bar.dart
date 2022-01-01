import 'package:double_back_to_close/double_back_to_close.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ppob_5/default/size_config.dart';
import 'package:flutter_ppob_5/dummy_page.dart';
import 'package:flutter_ppob_5/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class CustomBottomNavbar extends StatelessWidget {
  final PersistentTabController controller =
      PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [
      HomePage(),
      DummyPage(),
      DummyPage(),
      DummyPage(),
      DummyPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.home,
          size: SizeConfig.safeBlockHorizontal * 6,
        ),
        textStyle:
            GoogleFonts.poppins(fontSize: SizeConfig.blockSizeHorizontal * 2.5),
        title: ("Home"),
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.notifications,
          size: SizeConfig.safeBlockHorizontal * 6,
        ),
        textStyle:
            GoogleFonts.poppins(fontSize: SizeConfig.blockSizeHorizontal * 2.5),
        title: ("Notifikasi"),
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.shopping_cart,
          size: SizeConfig.safeBlockHorizontal * 6,
        ),
        title: ("Keranjang"),
        textStyle:
            GoogleFonts.poppins(fontSize: SizeConfig.blockSizeHorizontal * 2.5),
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.access_time_rounded,
          size: SizeConfig.safeBlockHorizontal * 6,
        ),
        title: ("Riwayat"),
        textStyle:
            GoogleFonts.poppins(fontSize: SizeConfig.blockSizeHorizontal * 2.5),
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.person,
          size: SizeConfig.safeBlockHorizontal * 6,
        ),
        title: ("Akun"),
        textStyle:
            GoogleFonts.poppins(fontSize: SizeConfig.blockSizeHorizontal * 2.5),
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: DoubleBack(
        message: "Tap lagi untuk keluar",
        textStyle: TextStyle(fontSize: 12, color: Colors.white),
        child: PersistentTabView(
          context,
          navBarHeight: SizeConfig.safeBlockHorizontal * 15,
          controller: controller,
          screens: _buildScreens(),
          items: _navBarsItems(),
          confineInSafeArea: true,
          backgroundColor: Colors.white, // Default is Colors.white.
          handleAndroidBackButtonPress: true, // Default is true.
          resizeToAvoidBottomInset:
              true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true, // Default is true.
          hideNavigationBarWhenKeyboardShows:
              true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.circular(10.0),
            colorBehindNavBar: Colors.white,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: ItemAnimationProperties(
            // Navigation Bar's items animation properties.
            duration: Duration(milliseconds: 200),
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),

          navBarStyle: NavBarStyle
              .style6, // Choose the nav bar style with this property.
        ),
      ),
    );
  }
}
