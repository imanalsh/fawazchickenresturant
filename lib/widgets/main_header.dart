import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Image.asset('images/fawz_bk.jpg',
          width: 600, height: 240, fit: BoxFit.cover),
    ]);
  }
}
