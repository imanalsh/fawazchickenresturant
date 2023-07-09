// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/dummy_data.dart';
import 'package:flutter_application_3/screens/details_meal.dart';

import 'card_category.dart';
import 'home_view_larg.dart';
import 'tab_resturant.dart';

class TabBarEx extends StatefulWidget {
  static const routeName = 'tab_bar_ex';

  const TabBarEx({super.key});

  @override
  State<TabBarEx> createState() => _TabBarExState();
}

class _TabBarExState extends State<TabBarEx> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 1200) {
        if (constraints.maxWidth < 1001) {
          return HomeViewSmall(constraints.maxWidth, 1);
        } else {
          return HomeViewSmall(constraints.maxWidth, 1);
        }
      } else {
        return HomeViewLarge(constraints.maxWidth, 1);
      }
    });
  }
}

class HomeViewSmall extends StatefulWidget {
  final double widthLayout;
  final double ratio;

  const HomeViewSmall(this.widthLayout, this.ratio, {super.key});

  @override
  State<HomeViewSmall> createState() => _HomeViewSmallState();
}

class _HomeViewSmallState extends State<HomeViewSmall> {
  void selectMeal(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(DetailsMeal.routeName);
  }

  String selectedLocale = 'عربي';
  int selectedLocaleIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 7,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                actions: popmenubutton,
                pinned: false,
                expandedHeight: 330.0,
                flexibleSpace: FlexibleSpaceBar(
                  //   title: Text('Goa', textScaleFactor: 1),
                  background: Image.asset(
                    'assets/images/fawz_bk.jpg',
                    fit: BoxFit.fill,
                  ),
                  stretchModes: [StretchMode.zoomBackground],
                ),
                //collapsedHeight: 100,
              ),
              SliverPersistentHeader(
                delegate: MySliverPersistentHeaderDelegate(
                  TabBar(
                    isScrollable: true,
                    // indicatorSize: ,
                    padding: EdgeInsets.all(10),
                    indicator: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(10), // Creates border
                        color: Color.fromARGB(111, 245, 228, 207)),
                    labelPadding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    splashBorderRadius: BorderRadius.circular(5),
                    labelColor: Colors.white,
                    tabs: DUMMY[selectedLocaleIndex]
                        .map((catgory) => TabResturant(
                              catgory.imageicon,
                              catgory.types,
                            ))
                        .toList(),
                  ),
                ),
                pinned: false,
              ),
            ];
          },
          body: TabBarView(
            children: datalacale[selectedLocaleIndex]
                .map((category) => GridView(
                      gridDelegate:
                          // ignore: prefer_const_constructors
                          SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent:
                                  (widget.widthLayout) * widget.ratio,
                              childAspectRatio: 3 / 4,
                              crossAxisSpacing: 5,
                              mainAxisSpacing: 1),
                      children: (category['restaurants']
                              as List<Map<String, dynamic>>)
                          .map(
                            (restaurant) => Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    selectMeal(context);
                                    print(widget.ratio);
                                  },
                                  child: Column(
                                    children: [
                                      Text(
                                        restaurant['namemain'],
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      CardCategory(
                                          restaurant['name'],
                                          restaurant['imageUrl'],
                                          restaurant['price'],
                                          widget.widthLayout,
                                          widget.ratio),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }

  List<Widget> get popmenubutton {
    return [
      PopupMenuButton(
        initialValue: 2,
        offset: const Offset(-5, -40),
        padding: const EdgeInsets.only(top: 20, bottom: 2, right: 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8.0),
            bottomRight: Radius.circular(8.0),
            topLeft: Radius.circular(8.0),
            topRight: Radius.circular(8.0),
          ),
        ),
        itemBuilder: (context) {
          return [
            PopupMenuItem<int>(
              value: 0,
              child: Text("عربي"),
            ),
            PopupMenuItem<int>(
              value: 1,
              child: Text("كوردي"),
            ),
            PopupMenuItem<int>(
              value: 2,
              child: Text("English"),
            ),
          ];
        },
        onSelected: (value) {
          if (value == 0) {
            setState(() {
              selectedLocale = 'عربي';
              selectedLocaleIndex = 0;
            });

            print("My account menu is selected.");
          } else if (value == 1) {
            setState(() {
              selectedLocale = 'كوردي';
              selectedLocaleIndex = 1;
            });

            print("Settings menu is selected.");
          } else if (value == 2) {
            setState(() {
              selectedLocale = 'English';
              selectedLocaleIndex = 2;
            });

            print("Logout menu is selected.");
          }
        },
        child: Container(
          margin: EdgeInsets.only(top: 7, bottom: 10, right: 1),
          decoration: BoxDecoration(
            border:
                Border.all(color: Color.fromARGB(255, 90, 90, 90), width: 1),
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: const <Color>[
                Color.fromARGB(230, 230, 230, 253),
                Color.fromARGB(255, 253, 253, 253)
              ],
            ),
          ),
          child: Row(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.expand_more,
                size: 18,
                color: Colors.black,
                weight: 100,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  selectedLocale,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }
}

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  MySliverPersistentHeaderDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => 100;
  @override
  double get maxExtent => 132;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(MySliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
