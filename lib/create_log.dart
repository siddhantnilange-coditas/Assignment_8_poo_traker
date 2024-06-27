import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poo_tracker/widgets/colors.dart';

class CreateLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    if (textScaleFactor > 1.5) {
      textScaleFactor = 1.5;
    }
    // TODO: implement build
    return Scaffold(
      backgroundColor: defaultTehemColor,
      body: Container(
        height: 896,
        padding: const EdgeInsets.only(left: 44, right: 44),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 139,
            ),
            Text(
              'Create\nNewLog',
              textScaler: TextScaler.linear(textScaleFactor),
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(255, 255, 255, 1)),
            ),
            Expanded(flex: 113, child: SizedBox()),
            Column(
              children: [
                // SizedBox(height: 113,),
                SizedBox(
                  // height: 100,
                  // width: 327,
                  width: double.infinity,

                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 25),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              height: 52,
                              width: 41,
                              child: SvgPicture.asset(
                                  'assets/icons/stop_watch_green.svg')),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Start Now',
                            textScaler: TextScaler.linear(textScaleFactor),
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w700,
                                color: defaultTehemColor),
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                //    Expanded(
                //   flex: 30,
                //     child: SizedBox(

                // )),
                Text(
                  'or',
                  textScaler: TextScaler.linear(textScaleFactor),
                ),
                SizedBox(
                  height: 30,
                ),

                //            Expanded(
                //   flex: 30,
                //     child: SizedBox(

                // )),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Create old Log',
                      textScaler: TextScaler.linear(textScaleFactor),
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    style: OutlinedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 21),
                      side: BorderSide(
                          color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 321,
            )
          ],
        ),
      ),
    );
  }
}
