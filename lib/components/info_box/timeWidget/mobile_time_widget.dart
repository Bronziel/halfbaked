import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  const TimeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.schedule),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Prepp:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      child: Center(
                        child: Text(
                          '150min',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        VerticalDivider(
          color: Colors.grey,
        ),

        //second half
        Expanded(
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.schedule),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Total:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      child: Center(
                        child: Text(
                          '450min',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
