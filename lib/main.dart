import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/details_meal.dart';
import 'package:flutter_application_3/screens/intro_screen.dart';
import 'package:flutter_application_3/screens/details_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Fawaz Chicken',
        theme: ThemeData(
          canvasColor: const Color.fromARGB(0, 0, 0, 39),
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          indicatorColor: const Color.fromARGB(255, 3, 3, 3),
          hintColor: const Color(0xff280C0B),
          highlightColor: const Color(0xff372901),
          hoverColor: const Color(0xff3A3A3B),
          focusColor: const Color(0xff0B2512),
          disabledColor: Colors.grey,
          cardColor: const Color(0xFF151515),
          textTheme: ThemeData.dark().textTheme.copyWith(
                // bodySmall: TextStyle(color: Color.fromARGB(254, 254, 254, 100)),
                titleSmall:
                    const TextStyle(color: Color.fromARGB(254, 254, 254, 100)),
                bodySmall:
                    const TextStyle(color: Color.fromARGB(254, 254, 254, 100)),
              ),
          textSelectionTheme:
              const TextSelectionThemeData(selectionColor: Colors.white),
        ),
        darkTheme: ThemeData.dark(),
        //   home: MainScreen(constraints.maxWidth, 1),
        //(child: const TabBarEx()),
        //initialRoute: 'mainScreen',
        routes: {
          '/': (context) => IntroScreen(constraints.maxWidth, 1),
          DetailsScreen.routeName: (context) =>
              DetailsScreen(constraints.maxWidth, 1),

          DetailsMeal.routeName: (context) => const DetailsMeal()
          //  CategoryMealsScreen.routeName: (context) => CategoryMealsScreen()
        },
      );
    });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
