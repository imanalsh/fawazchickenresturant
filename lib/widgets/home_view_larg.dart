import 'package:flutter/material.dart';
import 'home_view_small.dart';

// ignore: must_be_immutable
class HomeViewLarge extends StatefulWidget {
  String selectedLocale;
  String selectedLocaleIndex;
  final double widthLayout;
  double ratio;
  HomeViewLarge(this.selectedLocale, this.selectedLocaleIndex, this.widthLayout,
      this.ratio,
      {super.key});

  @override
  State<HomeViewLarge> createState() => _HomeViewLargeState();
}

class _HomeViewLargeState extends State<HomeViewLarge> {
  @override
  Widget build(BuildContext context) {
    if (widget.widthLayout >= 1200) {
      return Row(
        // ignore: prefer_const_constructors
        // reverse: true,
        children: [
          SizedBox(
            width: 900,
            child: HomeViewSmall(
                widget.selectedLocale, widget.selectedLocaleIndex, 900, 1),
          ),
          Stack(children: [
            Container(
              //  child: Row(),
              padding: EdgeInsets.all(((widget.widthLayout - 1100) / 2)),
              decoration: const BoxDecoration(color: Colors.black),
              child: Center(
                child: Image.asset(
                  'assets/images/main_logo.jpeg',
                  width: 200,
                ),
              ),
            ),
          ])
        ],
      );
    } else {
      return Row(
        // ignore: prefer_const_constructors
        // reverse: true,
        children: [
          SizedBox(
              width: widget.widthLayout,
              child: HomeViewSmall(
                  widget.selectedLocale,
                  widget.selectedLocaleIndex,
                  widget.widthLayout,
                  widget.ratio)),
        ],
      );
    }
  }
}
