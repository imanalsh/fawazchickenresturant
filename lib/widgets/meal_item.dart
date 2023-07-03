import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final String locale;
  final String id;
  final String title;
  final String price;
  //final Color color;
  final String imageUrl;
  // final List<String> categories;
  const MealItem(
    this.locale,
    this.imageUrl,
    this.id,
    this.title,
    this.price, {super.key},
    // this.color,
    //this.categories
  );
  void selectMeal() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectMeal,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Column(children: [
          Stack(children: [
            ClipRRect(
              // ignore: prefer_const_constructors
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15),
              ),
              child: Image.network(
                imageUrl,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Container(
                width: 220,
                color: Colors.black54,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            )
          ]),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Row(
                  children: [Icon(Icons.access_alarms_rounded)],
                ),
                Row(),
                Row(),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
