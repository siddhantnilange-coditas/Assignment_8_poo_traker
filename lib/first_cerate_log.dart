import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poo_tracker/dashboard_screen.dart';
import 'package:poo_tracker/widgets/colors.dart';

class CreateLogScreen extends StatefulWidget {
  CreateLogScreen({super.key});

  @override
  State<CreateLogScreen> createState() => _CreateLogScreenState();
}

class _CreateLogScreenState extends State<CreateLogScreen> {
  List<String> imagePaths = [
    'assets/icons/Group 0.svg',
    'assets/icons/Group 1.svg',
    'assets/icons/Group 2.svg',
    'assets/icons/Group 2.svg',
    'assets/icons/Group 4.svg',
    'assets/icons/Group 5.svg',
    'assets/icons/Group 6.svg',
    'assets/icons/Group 7.svg',
    'assets/icons/Group 8.svg',
  ];

  List<Color> colorsOfPoo = [
    const Color.fromRGBO(181, 101, 30, 1),
    const Color.fromRGBO(198, 110, 62, 1),
    const Color.fromRGBO(181, 101, 30, 1),
    const Color.fromRGBO(1139, 69, 18, 1),
    const Color.fromRGBO(101, 67, 32, 1),
    const Color.fromRGBO(105, 128, 86, 1),
    const Color.fromRGBO(181, 101, 30, 1),
    const Color.fromRGBO(198, 110, 62, 1),
    const Color.fromRGBO(181, 101, 30, 1),
    const Color.fromRGBO(1139, 69, 18, 1),
  ];
  int selectedGridIndex = -1;
  @override
  Widget build(BuildContext context) {
    Color selectedGridColor = const Color.fromARGB(255, 199, 193, 193);

    String currentDate = DateTime.now().toString();
    String formattedDate = currentDate.substring(0, 10);
    // Dimension dimens = Dimension(sizeBoxHt: 36);
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    if (textScaleFactor > 1.5) {
      textScaleFactor = 1.4;
    }
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
        
          Container(
            // height: 896,

            child: SingleChildScrollView(
              padding: EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Container(
                    // height: 896,
                    // height: 1003,

                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // const SizedBox(height: 50,),

                        // Expanded(flex: 99, child: SizedBox()),
                        Text(
                          'Create Log',
                          textScaler: TextScaler.linear(textScaleFactor),
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(1, 170, 79, 1)),
                        ),
                        const SizedBox(
                          height: 47,
                        ),

                        // Expanded(flex: 47, child: SizedBox()),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  // minimumSize: double.infinity,

                                  padding: const EdgeInsets.symmetric(
                                      vertical: 14, horizontal: 22),
                                  // padding: EdgeInsets.only(
                                  //     left: 5, top: 13, bottom: 13, right: 5),
                                  // minimumSize: Size(
                                  //     MediaQuery.of(context).size.width * 0.42, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: const BorderSide(
                                      color: Color.fromARGB(255, 156, 152, 152),
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/calender_svg.svg',
                                    ),
                                    const SizedBox(width: 13),
                                    Center(
                                      child: Text(
                                        formattedDate,
                                        textScaler:
                                            TextScaler.linear(textScaleFactor),
                                        style: const TextStyle(
                                            letterSpacing: .7,
                                            color: Color.fromARGB(
                                                255, 156, 152, 152),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 14, horizontal: 22),
                                  // minimumSize:
                                  //     Size(MediaQuery.of(context).size.width * 0.44, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                    side: const BorderSide(
                                      color: Color.fromARGB(188, 204, 204, 199),
                                      width: 1.0,
                                    ),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    '10:20 - 10:30 am',
                                    textScaler:
                                        TextScaler.linear(textScaleFactor),
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 156, 152, 152),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: .2),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Expanded(flex: 40, child: SizedBox()),
                        const SizedBox(
                          height: 40,
                        ),
                        Text('Type',
                            textScaler: TextScaler.linear(textScaleFactor),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            )),
                        // Expanded(flex: 25, child: SizedBox()),
                        const SizedBox(
                          height: 25,
                        ),

                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Row(
                              //   children: [
                              //     Expanded(
                              //       child: _buildGridItem(
                              //         'assets/icons/Group 64.svg',
                              //       ),
                              //     ),
                              //     const SizedBox(width: 10),
                              //     Expanded(
                              //       child: _buildGridItem(
                              //           'assets/icons/Group 65.svg'),
                              //     ),
                              //     const SizedBox(width: 10),
                              //     Expanded(
                              //       child: _buildGridItem(
                              //           'assets/icons/Group 66.svg'),
                              //     ),
                              //   ],
                              // ),
                              // const SizedBox(height: 10),
                              // Row(
                              //   children: [
                              //     Expanded(
                              //       child: _buildGridItem(
                              //         'assets/icons/Group 67.svg',
                              //       ),
                              //     ),
                              //     const SizedBox(width: 10),
                              //     Expanded(
                              //       child: _buildGridItem(
                              //           'assets/icons/Group 68.svg'),
                              //     ),
                              //     const SizedBox(width: 10),
                              //     Expanded(
                              //       child: _buildGridItem(
                              //           'assets/icons/Group 69.svg'),
                              //     ),
                              //   ],
                              // ),
                              // const SizedBox(
                              //   height: 10,
                              // ),
                              // Row(
                              //   children: [
                              //     Expanded(
                              //       child: _buildGridItem(
                              //           'assets/icons/Group 70.svg'),
                              //     ),
                              //     const SizedBox(width: 10),
                              //     Expanded(
                              //       child: _buildGridItem(
                              //           'assets/icons/Group 72.svg'),
                              //     ),
                              //     const SizedBox(width: 10),
                              //     Expanded(
                              //       child: _buildGridItem(
                              //           'assets/icons/Group 71.svg'),
                              //     ),
                              //   ],
                              // ),
                              GridView.count(
                                mainAxisSpacing: 14.0,
                                padding: EdgeInsets.all(0),
                                crossAxisSpacing: 14.0,
                                crossAxisCount: 3,
                                shrinkWrap: true,
                                children: List.generate(9, (index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        // print(index);
                                        selectedGridIndex = index;
                                        print(selectedGridIndex);
                                      });
                                    },
                                    child: Container(
                                      // color: Colors.white,
                                      width: 114,
                                      height: 100,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        border: Border.all(
                                          color: selectedGridIndex == index
                                              ? defaultTehemColor
                                              : Color.fromARGB(
                                                  255, 199, 193, 193),
                                          width: 1.5,
                                        ),
                                      ),
                                      // color: Colors.blue,
                                      alignment: Alignment.center,
                                      child: SvgPicture.asset(
                                        'assets/icons/Group $index.svg',
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ],
                          ),
                        ),
                        // Expanded(flex: 40, child: SizedBox()),
                        const SizedBox(
                          height: 40,
                        ),

                        // Container(
                        //   // color: Colors.red,
                        //   width: 390,
                        //   height: 98,
                        //   child:
                        Text(
                          'Colour',
                          textScaler: TextScaler.linear(textScaleFactor),
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              fontFamily: ''),
                        ),
                        // Column(
                        //   crossAxisAlignment: CrossAxisAlignment.start,
                        //   children: [

                        // Expanded(flex: 40, child: SizedBox()),
                        const SizedBox(
                          height: 25,
                        ),

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              6,
                              (index) => Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: colorsOfPoo[index],
                                ),
                              ),
                            )
                                .expand((widget) => [
                                      widget,
                                      const SizedBox(width: 18),
                                    ])
                                .toList(),
                          ),
                        ),
                        //   ],
                        // ),
                        // ),
                        // Expanded(flex: 40, child: SizedBox()),
                        const SizedBox(
                          height: 40,
                        ),

                
               
                        ShowMemoWidget(textScaleFactor)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 20,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Cancel',
                  textScaler: TextScaler.linear(textScaleFactor),
                ),

                const SizedBox(
                  width: 68,
                ),
                // Expanded(flex: 68, child: SizedBox()),
                const SizedBox(
                  height: 100,
                ),

                SizedBox(
                  //  width: double.infinity,
                  width: 216,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DashBoard(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 0),
                      // backgroundColor: ,
                      backgroundColor: const Color.fromRGBO(1, 170, 79, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      '+ Create',
                      textScaler: TextScaler.linear(textScaleFactor),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Positioned(
            // top: 0,
            // left: 40,
            bottom: 0,
            child: SvgPicture.asset(
              'assets/images/Group 55.svg',
            ),
          ),
            Positioned(
            right: 0,
            // top: 0,
            // left: 40,
            // bottom: 375,
            child: SvgPicture.asset(
              'assets/images/Group 46.svg',
            ),
          ),
        ],
      ),
    );
  }

  Widget ShowMemoWidget(textScaleFactor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Memo',
          textScaler: TextScaler.linear(textScaleFactor),
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, fontFamily: ''),
        ),
        // Expanded(flex: 25, child: SizedBox()),
        const SizedBox(
          height: 25,
        ),

        Container(
            // color: Color.fromARGB(255, 225, 219, 219),
            // width: 375,
            // height: 135,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color.fromARGB(255, 240, 238, 238),
                width: 1,
              ),
              color: const Color.fromARGB(255, 240, 238, 238),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 22, top: 29, bottom: 27, right: 9),
              child: Text(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque suscipit fringilla tortor. Nulla est libero.',
                textScaler: TextScaler.linear(textScaleFactor),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  wordSpacing: 1,
                ),
              ),
            )),
        // Expanded(flex: 20, child: SizedBox()),
        const SizedBox(
          height: 20,
        ),

        Row(
          children: [
            SvgPicture.asset('assets/icons/image.svg'),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset('assets/icons/image.svg'),
            const SizedBox(
              width: 10,
            ),
            SvgPicture.asset('assets/icons/image.svg'),
          ],
        ),
        // Expanded(flex: 64, child: SizedBox()),
        const SizedBox(
          height: 64,
        )
      ],
    );
  }

  Widget _buildGridItem(String label) {
    return Container(
      // color: Colors.white,
      width: 114,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: const Color.fromARGB(255, 199, 193, 193),
          width: 1.0,
        ),
      ),
      // color: Colors.blue,
      alignment: Alignment.center,
      child: SvgPicture.asset(
        label,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
