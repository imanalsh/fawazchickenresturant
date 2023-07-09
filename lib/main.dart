import 'package:flutter/material.dart';
import 'package:flutter_application_3/screens/details_meal.dart';
import 'package:flutter_application_3/screens/main_screen.dart';
import 'package:flutter_application_3/widgets/tab_bar_Ex.dart';
import 'package:flutter_application_3/widgets/tab_bar_Ex_en.dart';
import 'package:flutter_application_3/widgets/tab_bar_Ex_kurdy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fawaz Chicken',

      /*  theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.orange,
          onPrimary: Colors.white,
          secondary: Colors.green,
          onSecondary: Colors.white,
          primaryContainer: Colors.orange,
          error: Colors.black,
          onError: Colors.white,
          background: Colors.blue,
          onBackground: Colors.white,
          surface: Colors.pink,
          onSurface: Colors.white,
        ),
      ),
      // themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color.fromARGB(255, 187, 180, 122),
          onPrimary: Colors.white,
          secondary: Colors.green,
          onSecondary: Color.fromARGB(255, 51, 51, 51),
          primaryContainer: Color.fromARGB(255, 51, 51, 51),
          error: Colors.black,
          onError: Colors.black,
          background: Colors.black87,
          onBackground: Colors.black87,
          surface: Color.fromARGB(255, 51, 51, 51),
          onSurface: Colors.black26,
        ),
      ),
      themeMode: ThemeMode.dark,*/

      theme: ThemeData(
        //  primarySwatch: Colors.red,
        //  colorScheme: Colors.brown,
        canvasColor: const Color.fromARGB(0, 0, 0, 39),
        brightness: Brightness.dark,
        primaryColor: Colors.black,
        indicatorColor: Color(0xff0E1D36),

        hintColor: Color(0xff280C0B),

        highlightColor: Color(0xff372901),
        hoverColor: Color(0xff3A3A3B),

        focusColor: Color(0xff0B2512),
        disabledColor: Colors.grey,
        cardColor: Color(0xFF151515),
        /*    colorScheme: const ColorScheme(
            brightness: Brightness.dark,
            primary: Color.fromARGB(255, 187, 180, 122),
            onPrimary: Colors.black,
            secondary: Colors.green,
            onSecondary: Color.fromARGB(255, 51, 51, 51),
            primaryContainer: Color.fromARGB(255, 51, 51, 51),
            error: Colors.black,
            onError: Colors.black,
            background: Colors.black87,
            onBackground: Colors.black87,
            surface: Color.fromARGB(255, 51, 51, 51),
            onSurface: Colors.black26,
          ),*/
        textTheme: ThemeData.dark().textTheme.copyWith(
              // bodySmall: TextStyle(color: Color.fromARGB(254, 254, 254, 100)),
              titleSmall:
                  const TextStyle(color: Color.fromARGB(254, 254, 254, 100)),
              bodySmall:
                  const TextStyle(color: Color.fromARGB(254, 254, 254, 100)),
            ),
        textSelectionTheme:
            TextSelectionThemeData(selectionColor: Colors.white),

        //colorScheme: ColorScheme(background: Colors.black)
      ),
      darkTheme: ThemeData.dark(),
      // home: TabBarEx(),
      //(child: const TabBarEx()),
      routes: {
        '/': (context) => const MainScreen(),
        TabBarEx.routeName: (context) => const TabBarEx(),
        TabBarExEn.routeName: (context) => const TabBarExEn(),
        TabBarExKurdy.routeName: (context) => const TabBarExKurdy(),
        DetailsMeal.routeName: (context) => const DetailsMeal()
        //  CategoryMealsScreen.routeName: (context) => CategoryMealsScreen()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _counter = 0;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return const Scaffold(
        // body: const categoriesScreen(),
        );
  }
}
