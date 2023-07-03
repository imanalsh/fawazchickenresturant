import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/category_item.dart';
import '../dummy_data.dart';


// ignore: camel_case_types
class categoriesScreen extends StatelessWidget {
  const categoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var dummyCategories = DUMMY_CATEGORIES;
    return Container(
      child: GridView(
        padding: const EdgeInsets.all(24),
        gridDelegate:
            // ignore: prefer_const_constructors
            SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
        children: DUMMY_CATEGORIES
            .map((catgory) =>
                CategoryItem(catgory.id, catgory.title, catgory.color))
            .toList(),
      ),
    );
  }
}
