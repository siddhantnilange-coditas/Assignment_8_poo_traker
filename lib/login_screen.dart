import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poo_tracker/first_cerate_log.dart';
import 'package:poo_tracker/create_account_screen.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    if (textScaleFactor > 1.5) {
      textScaleFactor = 1.5;
    }
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
          
            Positioned(
              top: 0,
              // left: 40,
              // bottom: 375,
              child: SvgPicture.asset(
                'assets/images/Group 46.svg',
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
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 99,
                ),
                // const Expanded( child: SizedBox()),
                Container(
                  padding: EdgeInsets.only(left: 40),
                  // margin: EdgeInsets.zero,
                  child: Text(
                    textScaler: TextScaler.linear(textScaleFactor),
      
                    'Welcome\nBack',
                    // maxLines: 1,
                    // overflow: TextOverflow.ellipsis,
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
                    color: const Color.fromARGB(255, 248, 246, 246),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Expanded(flex: 101, child: SizedBox()),
      
                        Text(
                          'Login',
                          textScaler: TextScaler.linear(textScaleFactor),
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
                                EdgeInsets.only(bottom: 20, right: 219),
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
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        const Expanded(flex: 40, child: SizedBox()),
                        Center(
                          child: SizedBox(
                            width: double.infinity,
                            // height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(1, 170, 79, 1),
                                padding: const EdgeInsets.symmetric(vertical: 14),
      
                                // EdgeInsets.symmetric(horizontal: 40, vertical: 0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              onPressed: () {
                                // CreateLogScreen();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CreateLogScreen()),
                                );
                              },
                              child: Text(
                                'Login',
                                textScaler: TextScaler.linear(textScaleFactor),
                                style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                            ),
                          ),
                        ),
      
                        const Expanded(flex: 40, child: SizedBox()),
                        Center(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forget Password',
                              textScaler: TextScaler.linear(textScaleFactor),
                              style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 19,
                                  color: Color.fromARGB(255, 143, 140, 140)),
                            ),
                          ),
                        ),
                        const Expanded(flex: 40, child: SizedBox()),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                vertical: 14,
                              ),
                              // padding:
                              // EdgeInsets.only(left: 1110, right:119, top: 8, bottom: 8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CreateAccount()),
                              );
                            },
                            child: Text(
                              'Sign Up',
                              textScaler: TextScaler.linear(textScaleFactor),
                              style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                        ),
                        // SizedBox(height: 104,),
      
                        const Expanded(flex: 104, child: SizedBox()),
                      ],
                    )
                  ),
              ],
            ),
              Positioned(
              top: MediaQuery.of(context).size.height * 0.26,
              left: 40,
              // bottom: 375,
              child: SvgPicture.asset(
                'assets/icons/login_lock.svg',
              ),
            ),
          ],
        ),
        // Expanded(flex: 68, child: SizedBox()),
      
        // Expanded(flex: 49, child: SizedBox()),
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
          
    