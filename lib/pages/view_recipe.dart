import 'package:flutter/material.dart';
import 'package:halfbaked/addaptive/desktop_body.dart';
import 'package:halfbaked/addaptive/ipad_body.dart';
import 'package:halfbaked/addaptive/mobile_body.dart';

class ViewRecipe extends StatelessWidget {
  const ViewRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    bool mobileScreen = 600 < MediaQuery.sizeOf(context).width;
    bool ipadScreen = 1400 < MediaQuery.sizeOf(context).width;
    bool desktopScreen = 1400 > MediaQuery.sizeOf(context).width;

    if (mobileScreen) {
      return MobileBody(child: Container());
    } else if (ipadScreen) {
      return IpadBody(child: Container());
    } else {
      return DesktopBody(child: Container());
    }
  }
}
