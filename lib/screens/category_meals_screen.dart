import 'package:flutter/material.dart';
import 'package:flutter_application_3/dummy_data.dart';
import 'package:flutter_application_3/widgets/meal_item.dart';

class CategoryMealsScreen extends StatefulWidget {
  static const routeName = 'catagory_meals';

  const CategoryMealsScreen({super.key});
  @override
  State<CategoryMealsScreen> createState() => _CateMealScreenState();
}

class _CateMealScreenState extends State<CategoryMealsScreen> {
  @override
  //Map<String, String>? data = {};
  Widget build(BuildContext context) {
    final routeArg =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArg['id'];
    final categoryTitle = routeArg['title'];
    const categoryMeals = DUMMY_MEALS;

    /* .where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();*/
    return Scaffold(
      appBar: AppBar(title: Text(categoryTitle.toString())),
      body: Column(
        children: [
          Container(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return MealItem(
                  categoryMeals[index].locale,
                  categoryMeals[index].imageUrl,
                  categoryMeals[index].id,
                  categoryMeals[index].title,
                  categoryMeals[index].price,
                );
              },
              itemCount: categoryMeals.length,
            ),
          ),
        ],
      ),
    );
  }
}
