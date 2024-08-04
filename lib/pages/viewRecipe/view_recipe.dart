import 'package:flutter/material.dart';
import 'package:halfbaked/addaptive/desktop_body.dart';
import 'package:halfbaked/addaptive/ipad_body.dart';
import 'package:halfbaked/addaptive/mobile_body.dart';
import 'package:halfbaked/components/carousell/caro_mobile.dart';

class ViewRecipe extends StatelessWidget {
  const ViewRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    bool mobileScreen = 600 > MediaQuery.sizeOf(context).width;
    bool ipadScreen = 1400 > MediaQuery.sizeOf(context).width;
    //bool desktopScreen = 1400 < MediaQuery.sizeOf(context).width;

    if (mobileScreen) {
      return const MobileBody(child: MobileRecipe());
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
          Boxcheck(),
          Boxcheck(),
          Boxcheck(),
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
