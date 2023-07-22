// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../widgets/home_view_larg.dart';
import '../widgets/home_view_small.dart';

class DetailsScreen extends StatefulWidget {
  static const routeName = 'DetailsScreen';

  double widthLayoutEX;
  double ratioEx;
  DetailsScreen(this.widthLayoutEX, this.ratioEx, {super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    String selectedLocale;
    String selectedLocaleIndex;
    if (ModalRoute.of(context)!.settings.arguments != null) {
      final routeArg =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;

      selectedLocale = routeArg['locale']!;
      selectedLocaleIndex = routeArg['localIndex']!;
    } else {
      selectedLocale = 'عربي';
      selectedLocaleIndex = '0';
    }

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1200) {
        return HomeViewSmall(selectedLocale, selectedLocaleIndex,
            constraints.maxWidth, widget.ratioEx);
      } else {
        return HomeViewLarge(selectedLocale, selectedLocaleIndex,
            constraints.maxWidth, widget.ratioEx);
      }
    });
  }
}
