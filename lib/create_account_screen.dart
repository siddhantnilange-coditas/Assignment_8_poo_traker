import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poo_tracker/login_screen.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    if (textScaleFactor > 1.5) {
      textScaleFactor = 1.5;
    }
    bool _isChecked = false;
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
           Positioned(//
            top: 0,
            right: 0,
            // left: 40,
            // bottom: 0,
            child: SvgPicture.asset(
              'assets/images/Group 46.svg',
            ),
          ),
          Positioned(
            top: 320,
            // left: 40,
            // bottom: 0,
            child: SvgPicture.asset(
              'assets/images/Group 55.svg',
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(flex: 99, child: SizedBox()),
              Container(
                padding: const EdgeInsets.only(left: 40),
                // margin: EdgeInsets.zero,
                child: Text(
                  textScaler: TextScaler.linear(textScaleFactor),
                  'Create\nNew Account',
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(1, 170, 79, 1)),
                ),
              ),
              const Expanded(flex: 101, child: SizedBox()),
              Container(
                  padding: const EdgeInsets.only(left: 40, top: 101, right: 40),
                  height: MediaQuery.of(context).size.height * 0.7,
                  width: MediaQuery.of(context).size.width,
                  color: const Color.fromARGB(255, 248, 247, 247),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textScaler: TextScaler.linear(textScaleFactor),
                        'Sign Up',
                        style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(102, 102, 102, 1)),
                      ),
                      const Expanded(flex: 40, child: SizedBox()),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                          contentPadding:
                              EdgeInsets.only(bottom: 20, right: 219), // Add p

                          hintText: 'Enter your email',
                          // border: OutlineInputBorder(),
                        ),
                      ),
                      const Expanded(flex: 40, child: SizedBox()),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                          hintText: 'Enter your password',
                          contentPadding:
                              EdgeInsets.only(bottom: 20, right: 219),
                          // border: OutlineInputBorder(),
                          // suffixIcon: Icon(
                          //   Icons.visibility,
                          //   color: Colors.grey,
                          // ),
                        ),
                      ),
                      const Expanded(flex: 40, child: SizedBox()),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                          hintText: 'Re Enter your password',
                          contentPadding:
                              EdgeInsets.only(bottom: 20, right: 219),
                          // border: OutlineInputBorder(),
                          // suffixIcon: Icon(
                          //   Icons.visibility,
                          //   color: Colors.grey,
                          // ),
                        ),
                      ),
                      const Expanded(flex: 35, child: SizedBox()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Checkbox(
                            value: _isChecked,
                            onChanged: (bool? value) {
                              // setState(() {
                              //   _isChecked = value!;
                              // });
                            },
                            activeColor: Colors.green,
                          ),
                          Text(
                            'Agree app Policy and Term',
                            textScaler: TextScaler.linear(textScaleFactor),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          )
                        ],
                      ),
                      const Expanded(flex: 35, child: SizedBox()),
                      Center(
                        child: SizedBox(
                          width: 334,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(1, 170, 79, 1),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => LoginPage()),
                              // );
                               Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                            },
                            child: Text(
                              'Sign Up',
                              textScaler: TextScaler.linear(textScaleFactor),
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ),
                        ),
                      ),
                      const Expanded(flex: 50, child: SizedBox()),
                      Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: Text('Login',
                              textScaler: TextScaler.linear(textScaleFactor),
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400)),
                        ),
                      ),
                      const Expanded(flex: 79, child: SizedBox()),
                    ],
                  ))
            ],
          ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.26,
              left: 40,
              // bottom: 375,
              child: SvgPicture.asset(
                'assets/icons/create_acco_person.svg',
              ),
            ),
            
          // Positioned(
          //   top: MediaQuery.of(context).size.height * 0.26,
          //   left: 40,
          //   bottom: 375,
          //   child: SvgPicture.asset('assets/icons/create_acco_person.svg'),
          // ),
         
        ],
      ),
    );
  }
}
         
//             Container(
//                             height: MediaQuery.of(context).size.height * 0.6, // 80% of screen height
//               width: MediaQuery.of(context).size.width, // Full width
//               decoration:
//                   BoxDecoration(color: Color.fromARGB(245, 156, 156, 98)),
//               child: Column(
//                 children: [
//                 
//                 ],
//               ),
//             ),
          
    