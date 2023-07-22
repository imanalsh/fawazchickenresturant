import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../screens/details_meal.dart';
import 'card_category.dart';
import 'tab_resturant.dart';

// ignore: must_be_immutable
class HomeViewSmall extends StatefulWidget {
  static const routeName = 'home_view_small';
  String selectedLocale;
  String selectedLocaleIndex;
  final double widthLayout;
  double ratio;

  HomeViewSmall(this.selectedLocale, this.selectedLocaleIndex, this.widthLayout,
      this.ratio,
      {super.key});

  @override
  State<HomeViewSmall> createState() => _HomeViewSmallState();
}

class _HomeViewSmallState extends State<HomeViewSmall> {
  void selectMeal(BuildContext ctx, String name, String imageUrl, String price,
      String widthLayout, String ratio) {
    Navigator.of(ctx).pushNamed(DetailsMeal.routeName, arguments: {
      'name': name,
      'imageUrl': imageUrl,
      'price': price,
      'widthLayout': widthLayout,
      'ratio': ratio
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 7,
        child: NestedScrollView(
          scrollDirection: Axis.vertical,
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                actions: popmenubutton,
                pinned: false,
                expandedHeight: 200.0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/images/fawz_bk.jpg',
                    fit: BoxFit.fill,
                  ),
                  stretchModes: const [StretchMode.zoomBackground],
                ),
              ),
              SliverPersistentHeader(
                delegate: MySliverPersistentHeaderDelegate(
                  TabBar(
                    indicatorColor: Colors.amber,
                    isScrollable: true,
                    padding: EdgeInsets.all(10),
                    indicator: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(10), // Creates border
                        color: Color.fromARGB(111, 245, 228, 207)),
                    labelPadding:
                        EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                    splashBorderRadius: BorderRadius.circular(5),
                    labelColor: Colors.white,
                    tabs: DUMMY[int.parse(widget.selectedLocaleIndex)]
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
            children: datalacale[int.parse(widget.selectedLocaleIndex)]
                .map((category) {
              return Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: const [Colors.black, Colors.black]),
                  ),
                  child: GridView(
                    gridDelegate:
                        // ignore: prefer_const_constructors
                        SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent:
                                (widget.widthLayout) * widget.ratio,
                            childAspectRatio: 3 / 4,
                            crossAxisSpacing: 0,
                            mainAxisSpacing: 0),
                    children:
                        (category['restaurants'] as List<Map<String, dynamic>>)
                            .map((restaurant) {
                      return Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                color: Color.fromARGB(255, 3, 3, 3),
                                padding: EdgeInsets.only(
                                    left: 20, top: 50, right: 20),
                                child: InkWell(
                                  onTap: () {
                                    selectMeal(
                                        context,
                                        restaurant['name'],
                                        restaurant['imageUrl'],
                                        restaurant['price'],
                                        widget.widthLayout.toString(),
                                        widget.ratio.toString());
                                  },
                                  child: Column(
                                    children: [
                                      CardCategory(
                                          restaurant['name'],
                                          restaurant['imageUrl'],
                                          restaurant['price'],
                                          widget.widthLayout,
                                          widget.ratio),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 10,
                                width: widget.widthLayout,
                                child: Visibility(
                                  visible: ((restaurant['id'] == 1) ||
                                      (restaurant['id'] == 2)),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(colors: const [
                                          Colors.black,
                                          Colors.black
                                        ]),
                                        // Creates border
                                        color:
                                            Color.fromARGB(111, 245, 228, 207)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: Text(
                                            restaurant['namemain'],
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Visibility(
                                          visible: ((restaurant['id'] == 1) &&
                                                  (widget.ratio == 1)) ||
                                              ((restaurant['id'] == 2) &&
                                                  (widget.ratio == 0.5)),
                                          child: Row(
                                            children: [
                                              IconButton.outlined(
                                                  padding:
                                                      EdgeInsets.only(left: 5),
                                                  onPressed: () {
                                                    setState(() {
                                                      widget.ratio = 1;
                                                    });
                                                  },
                                                  icon: const Icon(
                                                      Icons.square_rounded)),
                                              IconButton.outlined(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5),
                                                  onPressed: () {
                                                    setState(() {
                                                      widget.ratio = 0.5;
                                                    });
                                                  },
                                                  icon: const Icon(
                                                      Icons.grid_view_sharp)),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              );
            }).toList(),
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
              widget.selectedLocale = 'عربي';
              widget.selectedLocaleIndex = '0';
            });
          } else if (value == 1) {
            setState(() {
              widget.selectedLocale = 'كوردي';
              widget.selectedLocaleIndex = '1';
            });
          } else if (value == 2) {
            setState(() {
              widget.selectedLocale = 'English';
              widget.selectedLocaleIndex = '2';
            });
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
                  widget.selectedLocale,
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
    return Material(
      color: Color.fromARGB(255, 3, 3, 3),
      child: Container(
        child: _tabBar,
      ),
    );
  }

  @override
  bool shouldRebuild(MySliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
