import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/tab_bar_Ex.dart';
import 'package:flutter_application_3/widgets/tab_bar_Ex_kurdy.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/tab_bar_Ex_en.dart';
// ignore: unused_import
import 'dart:ui_web';

class MainScreen extends StatefulWidget {
  // final int selctedlanguageIndex;
  //final String selectlanguage;
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void selectLanguage(BuildContext ctx, String locale, String language) {
    Navigator.of(ctx).pushNamed(TabBarEx.routeName);
  }

  //Future<void>? _launched;
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
          // appBar: AppBar(
          backgroundColor: Colors.transparent,

          body: Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.height / 10),
            child: Center(
              // preferredSize: const Size.fromHeight(800),
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(5)),
                  Image.asset(
                    'assets/images/main_logo.jpg',
                    height: 200,
                  ),
                  SizedBox.fromSize(
                    child: null,
                    size: const Size.fromHeight(50),
                  ),
                  const Text('FAWAZ CHICKEN',
                      style:
                          TextStyle(fontSize: 34, fontWeight: FontWeight.bold)),
                  SizedBox.fromSize(
                    child: null,
                    size: const Size.fromHeight(50),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      selectLanguage(context, '0', 'عربي');
                    },
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(200, 40)),
                      fixedSize: MaterialStateProperty.all(const Size(200, 40)),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(179, 141, 95, 0.988)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 18)),
                    ),
                    child: const Text(
                      'عربي',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox.fromSize(
                    child: null,
                    size: const Size.fromHeight(12),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        TabBarExKurdy.routeName,
                      );
                    },
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(200, 40)),
                      fixedSize: MaterialStateProperty.all(const Size(200, 40)),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(179, 141, 95, 0.988)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 18)),
                    ),
                    child: const Text('كوردي',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox.fromSize(
                    child: null,
                    size: const Size.fromHeight(12),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(
                        TabBarExEn.routeName,
                      );
                    },
                    style: ButtonStyle(
                      minimumSize:
                          MaterialStateProperty.all(const Size(200, 40)),
                      fixedSize: MaterialStateProperty.all(const Size(200, 40)),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(179, 141, 95, 0.988)),
                      textStyle:
                          MaterialStateProperty.all(TextStyle(fontSize: 18)),
                    ),
                    child: const Text('English',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height / 20)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                                padding: const MaterialStatePropertyAll(
                                    EdgeInsets.all(5)),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0x00000000)),
                                fixedSize: MaterialStateProperty.all(
                                    const Size(10, 35)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(50),
                                        side: const BorderSide(
                                            color: Color.fromRGBO(
                                                179, 141, 95, 0.988))))),
                            child: IconButton(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(1),
                              icon: Icon(Icons.facebook_outlined),
                              color: const Color.fromRGBO(179, 141, 95, 0.988),
                              onPressed: _launchedUrl,
                            )),
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14)),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              padding: const MaterialStatePropertyAll(
                                  EdgeInsets.all(5)),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0x00000000)),
                              fixedSize:
                                  MaterialStateProperty.all(const Size(10, 35)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      side: const BorderSide(
                                          color: Color.fromRGBO(
                                              179, 141, 95, 0.988))))),
                          child: IconButton(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(1),
                            icon: const Icon(
                              FontAwesomeIcons.whatsapp,
                            ),
                            color: const Color.fromRGBO(179, 141, 95, 0.988),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14)),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              padding: const MaterialStatePropertyAll(
                                  EdgeInsets.all(5)),
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0x00000000)),
                              fixedSize:
                                  MaterialStateProperty.all(const Size(10, 35)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                      side: const BorderSide(
                                          color: Color.fromRGBO(
                                              179, 141, 95, 0.988))))),
                          child: IconButton(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(1),
                            icon: const Icon(Icons.snapchat_outlined),
                            color: Color.fromRGBO(179, 141, 95, 0.988),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                      child: Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height / 10),
                    child: Text('Developed by Iman Alshehabi',
                        style: TextStyle(fontSize: 14, color: Colors.white70)),
                  )),
                ],
              ),
            ),
          ),
          // ),
        )
      ],
    );
  }

  _launchedUrl() async {
    final Uri url = Uri.parse(
        'https://www.facebook.com/profile.php?id=100093195124399&mibextid=LQQJ4d');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }
}
