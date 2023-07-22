import 'package:flutter/material.dart';

import '../screens/details_screen.dart';

class SelectLocalButton extends StatefulWidget {
  final String locale;
  final String indexLocale;
  const SelectLocalButton(this.locale, this.indexLocale, {super.key});

  @override
  State<SelectLocalButton> createState() => _SelectLocalButtonState();
}

class _SelectLocalButtonState extends State<SelectLocalButton> {
  void selectLanguage(BuildContext ctx, String locale, String localIndex) {
    Navigator.of(ctx).pushNamed(DetailsScreen.routeName,
        arguments: {'locale': locale, 'localIndex': localIndex});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            selectLanguage(context, widget.locale, widget.indexLocale);
          },
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(200, 40)),
            fixedSize: MaterialStateProperty.all(const Size(200, 40)),
            backgroundColor: MaterialStateProperty.all(
                const Color.fromRGBO(179, 141, 95, 0.988)),
            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 18)),
          ),
          child: Text(widget.locale,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              )),
        ),
        SizedBox.fromSize(
          child: null,
          size: const Size.fromHeight(12),
        ),
      ],
    );
  }
}
