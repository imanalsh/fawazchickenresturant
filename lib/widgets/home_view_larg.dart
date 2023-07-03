import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:flutter_application_3/widgets/tab_bar_Ex.dart';

class HomeViewLarge extends StatefulWidget {
  final double widthLayout;
  final double ratio;
  const HomeViewLarge(this.widthLayout, this.ratio, {super.key});

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
          const SizedBox(
            width: 900,
            child: HomeViewSmall(900, 1),
          ),
          Stack(children: [
            Container(
              //  child: Row(),
              padding: EdgeInsets.all(((widget.widthLayout - 1100) / 2)),
              decoration: const BoxDecoration(color: Colors.black87),
              child: Center(
                child: Image.asset(
                  'assets/images/main_logo.jpg',
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
              child: HomeViewSmall(widget.widthLayout, widget.ratio)),
        ],
      );
    }
  }
}
