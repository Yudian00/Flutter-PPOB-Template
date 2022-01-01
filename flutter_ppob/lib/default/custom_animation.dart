import 'package:entry/entry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_ppob/default/size_config.dart';

class CustomAnimation extends StatelessWidget {
  final Widget child;

  const CustomAnimation({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Entry.all(
      duration: Duration(milliseconds: 800),
      opacity: 0,
      xOffset: SizeConfig.safeBlockHorizontal * -50 / 3.6,
      yOffset: SizeConfig.safeBlockHorizontal * -50 / 3.6,
      scale: 1,
      child: child,
    );
  }
}

class CustomAnimation2 extends StatelessWidget {
  final Widget child;
  final int? delay;
  final int? duration;
  final int? xOffset;
  final int? yOffset;

  const CustomAnimation2({
    required this.child,
    this.duration = 800,
    this.delay = 0,
    this.xOffset = 0,
    this.yOffset = 0,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Entry.all(
      duration: Duration(milliseconds: duration!),
      delay: Duration(milliseconds: delay!),
      opacity: 0,
      xOffset: SizeConfig.safeBlockHorizontal * xOffset! / 3.6,
      yOffset: SizeConfig.safeBlockHorizontal * yOffset! / 3.6,
      scale: 1,
      child: child,
    );
  }
}
