import 'package:flutter/material.dart';

class TabResturant extends StatelessWidget {
  final String iconUrl;
  final String name;
  const TabResturant(this.iconUrl, this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Tab(
      iconMargin: const EdgeInsets.only(bottom: 10),
      height: 110,
      icon: Container(
        height: 55,
        width: 55,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: const Color.fromARGB(68, 122, 122, 113),
        ),
        child: Image.asset(
          iconUrl,
          height: 34,
          width: 35,
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
          padding: const EdgeInsets.all(1),
          height: 40,
          width: 60,
          child: FilledButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll<Color>(
                  Color.fromARGB(68, 122, 122, 113)),
              textStyle: MaterialStateProperty.all(
                const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              padding: MaterialStateProperty.all(const EdgeInsets.all(2)),
            ),
            child: Text(
              name,
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
              softWrap: true,
            ),
          )),
    );
  }
}
