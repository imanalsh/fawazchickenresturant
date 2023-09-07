import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/card_category.dart';

class DetailsMeal extends StatefulWidget {
  static const routeName = 'details_meals';

  const DetailsMeal({super.key});
  @override
  State<DetailsMeal> createState() => _DetailsMealState();
}

class _DetailsMealState extends State<DetailsMeal> {
  @override
  Widget build(BuildContext context) {
    String name;
    String imageUrl;
    String price;
    String widthLayout;
    String ratio;

    if (ModalRoute.of(context)!.settings.arguments != null) {
      var routeArg =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      print(routeArg);
      name = routeArg['name']!;
      imageUrl = routeArg['imageUrl']!;
      price = routeArg['price']!;
      widthLayout = routeArg['widthLayout']!;
      ratio = routeArg['ratio']!;
      return CardCategory(name, imageUrl, price,
          int.parse(widthLayout).toDouble(), int.parse(ratio).toDouble());
    } else {
      return const Text('حدد الوجبة قبل');
    }
  }
}
