import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:halfbaked/addaptive/desktop_body.dart';
import 'package:halfbaked/addaptive/ipad_body.dart';
import 'package:halfbaked/addaptive/mobile_body.dart';
import 'package:halfbaked/components/carousell/caro_ipad.dart';
import 'package:halfbaked/components/carousell/caro_mobile.dart';
import 'package:halfbaked/components/info_box/info_ipad.dart';
import 'package:halfbaked/components/info_box/info_mobile.dart';
import 'package:halfbaked/components/ingridients/ing_ipad.dart';
import 'package:halfbaked/components/ingridients/ing_mobile.dart';
import 'package:halfbaked/components/steps/steps_ipad.dart';
import 'package:halfbaked/components/steps/steps_mobile.dart';

class ViewRecipe extends StatelessWidget {
  const ViewRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    bool mobileScreen = 700 > MediaQuery.sizeOf(context).width;
    bool ipadScreen = 1400 > MediaQuery.sizeOf(context).width;
    double sizeof = MediaQuery.sizeOf(context).width;
    //bool desktopScreen = 1400 < MediaQuery.sizeOf(context).width;
    //more options for medium sized recipes maybe

    if (mobileScreen) {
      return const MobileBody(appBarTitle: 'Kebabrulle', child: MobileRecipe());
    } else if (ipadScreen) {
      return const IpadBody(child: IpadRecipe());
    } else {
      return const DesktopBody(child: DesktopRecipe());
    }
  }
}

class MobileRecipe extends StatelessWidget {
  const MobileRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CaroMobile(),
          IntroMobile(),
          PortionSizeCardMobile(),
          IngAndEquipIndexStackMobile(),
          StepsMobile(),
        ],
      ),
    );
  }
}

class Boxcheck extends StatelessWidget {
  const Boxcheck({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SizedBox(
        height: 300,
        width: double.infinity,
        child: Card(
          color: Colors.blue,
        ),
      ),
    );
  }
}

class IpadRecipe extends StatelessWidget {
  const IpadRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.sizeOf(context).height;
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxHeight: myHeight * 0.8, maxWidth: double.infinity),
                    child: IntroLayout()),
              ),
              const Expanded(
                flex: 2,
                child: const SizedBox(
                  height: 400,
                  width: 400,
                  child: CaroIpad(),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 400,
                width: 400,
                child: Column(
                  children: [
                    PortionSizeCardMobile(),
                    IngAndEquipIndexStackIpad(),
                  ],
                ),
              ),
              SizedBox(
                width: 400,
                height: 400,
                child: StepsIpad(),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class DesktopRecipe extends StatelessWidget {
  const DesktopRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: double.infinity,
                    child: Card(
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: double.infinity,
                    child: Card(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: double.infinity,
                    child: Card(
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: double.infinity,
                    child: Card(
                      color: Colors.amber,
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
