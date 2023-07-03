import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailsMeal extends StatefulWidget {
  static const routeName = 'details_meals';

  const DetailsMeal({super.key});
  @override
  State<DetailsMeal> createState() => _DetailsMealState();
}

class _DetailsMealState extends State<DetailsMeal> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
