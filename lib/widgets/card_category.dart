import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String price;
  final double layoutwidth;
  final double ratio;

  const CardCategory(
      this.name, this.imageUrl, this.price, this.layoutwidth, this.ratio,
      {super.key});
  @override
  Widget build(BuildContext context) {
    final double heightImage;
    final double heightTileText;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      // elevation: 4,
      margin: EdgeInsets.all((layoutwidth / 150) * ratio),
      borderOnForeground: true,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.all(0.0),
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromARGB(255, 51, 51, 51),
                    width: (layoutwidth / 40) * ratio),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: ClipRRect(
                // ignore: prefer_const_constructors
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(15),
                  topRight: const Radius.circular(15),
                ),
                child: Image.asset(
                  imageUrl,
                  height: (layoutwidth / 1) * ratio,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: (layoutwidth / 7) * ratio,
              padding: const EdgeInsets.only(bottom: 0),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(13)),
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.center,
                  colors: [
                    Colors.black26,
                    Colors.black26,
                  ],
                ),
              ),
              child: ListTile(
                title: Text(
                  name,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: layoutwidth / 30,
                    color: Colors.white,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.clip,
                ),
                subtitle: Text(
                  price,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: layoutwidth / 40,
                    color: Colors.white,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.fade,
                ),
              ),
            )
          ]),
    );
  }
}
