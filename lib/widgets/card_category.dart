import 'package:flutter/material.dart';

class CardCategory extends StatefulWidget {
  final String name;
  final String imageUrl;
  final String price;
  final double layoutwidth;
  final double ratio;

  CardCategory(
      this.name, this.imageUrl, this.price, this.layoutwidth, this.ratio,
      {super.key});

  @override
  State<CardCategory> createState() => _CardCategoryState();
}

class _CardCategoryState extends State<CardCategory> {
  @override
  Widget build(BuildContext context) {
    final double heightImage;
    final double heightTileText;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      // elevation: 4,
      margin: EdgeInsets.all((widget.layoutwidth / 150) * widget.ratio),
      borderOnForeground: true,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              margin: const EdgeInsets.all(0.0),
              //padding: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black26,
                    width: (widget.layoutwidth / 60) * widget.ratio),
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
                  widget.imageUrl,
                  height: (widget.layoutwidth - 20 / 1) * widget.ratio,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: (widget.layoutwidth / 7) * widget.ratio,
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
                  widget.name,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: widget.layoutwidth * widget.ratio / 30,
                    color: Colors.white,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.clip,
                ),
                subtitle: Text(
                  widget.price,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: widget.layoutwidth * widget.ratio / 40,
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
