import 'package:flutter/material.dart';
import 'package:flutter_application_3/firebase/add_user.dart';
import 'package:flutter_application_3/widgets/select_local_button.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: unused_import
import 'dart:ui_web';

import '../widgets/social_media_buttons.dart';
//import '../firebase/add_user.dart';

class IntroScreen extends StatelessWidget {
  final double widthLayoutEX;
  final double ratioEx;
  IntroScreen(this.widthLayoutEX, this.ratioEx, {super.key});

  final socialMedia = [
    'https://www.facebook.com/profile.php?id=100093195124399&mibextid=LQQJ4d',
    'https://api.whatsapp.com/send?phone=${009647519730405}=${Uri.parse('message')}',
    'https://instagram.com/fawazchicken2?igshid=OGQ5ZDc2ODk2ZA==',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/intro-cover.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(5)),
                    Image.asset(
                      'assets/images/main_logo.jpeg',
                      height: 170,
                    ),
                    SizedBox.fromSize(
                      child: null,
                      size: const Size.fromHeight(50),
                    ),
                    const Text('FAWAZ CHICKEN',
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.bold)),
                    SizedBox.fromSize(
                      child: null,
                      size: const Size.fromHeight(50),
                    ),
                    const SelectLocalButton('عربي', '0'),
                    const SelectLocalButton('كوردي', '1'),
                    const SelectLocalButton('English', '2'),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height / 20)),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // ignore: prefer_const_constructors
                        //  AddUser('iman', 'sete', 12),
                        SocialMediaButtons(
                            socialMedia[0], Icons.facebook_outlined),
                        SocialMediaButtons(
                            socialMedia[1], FontAwesomeIcons.whatsapp),
                        SocialMediaButtons(
                            socialMedia[2], FontAwesomeIcons.instagram),
                      ],
                    ),
                    Center(
                        child: Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 10),
                      child: const Text('Developed by Iman Alshehabi',
                          style:
                              TextStyle(fontSize: 14, color: Colors.white70)),
                    )),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
