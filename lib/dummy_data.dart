import 'package:flutter/material.dart';

import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const DUMMY_MEALS = [
  Meal(
      locale: 'AR',
      imageUrl: "images/شاورما دجاج.jpg",
      id: "Ar1",
      title: "شاورما",
      price: "7000"),
  Meal(
      locale: 'AR',
      imageUrl: "imageUrl",
      id: "Ar2",
      title: "دجاج مشوي غاز",
      price: "7000"),
];

const DUMMY = [
  [
    CategoryMeals(
      types: "شاورما",
      imageicon: "assets/images/icons/icondoner.png",
    ),
    CategoryMeals(
      types: "دجاج مشوي غاز",
      imageicon: "assets/images/icons/bbq2.png",
    ),
    CategoryMeals(
      types: "مشاوي على الفحم",
      imageicon: "assets/images/icons/Bbq.png",
    ),
    CategoryMeals(
      types: "غربي",
      imageicon: "assets/images/icons/WeMeal.png",
    ),
    CategoryMeals(
      types: "معجنات",
      imageicon: "assets/images/icons/pizza.png",
    ),
    CategoryMeals(
      types: "عصائر",
      imageicon: "assets/images/icons/ColdDrink.png",
    ),
    CategoryMeals(
      types: "مقبلات",
      imageicon: "assets/images/icons/Appetizer.png",
    ),
  ],
  [
    CategoryMeals(
      types: "شاورمە",
      imageicon: "assets/images/icons/icondoner.png",
    ),
    CategoryMeals(
      types: "مریشکی کبابی بە غاز",
      imageicon: "assets/images/icons/bbq2.png",
    ),
    CategoryMeals(
      types: "کۆبوونەوەی کبابی",
      imageicon: "assets/images/icons/Bbq.png",
    ),
    CategoryMeals(
      types: "خواردنی رۆژئاوایی",
      imageicon: "assets/images/icons/WeMeal.png",
    ),
    CategoryMeals(
      types: "شیرینی",
      imageicon: "assets/images/icons/pizza.png",
    ),
    CategoryMeals(
      types: "شەربەتەکان",
      imageicon: "assets/images/icons/ColdDrink.png",
    ),
    CategoryMeals(
      types: "خواردنی پێشکەشکار",
      imageicon: "assets/images/icons/Appetizer.png",
    ),
  ],
  [
    CategoryMeals(
      types: "Shawarma",
      imageicon: "assets/images/icons/icondoner.png",
    ),
    CategoryMeals(
      types: "Gas grilled chicken",
      imageicon: "assets/images/icons/bbq2.png",
    ),
    CategoryMeals(
      types: "Grilled meat",
      imageicon: "assets/images/icons/Bbq.png",
    ),
    CategoryMeals(
      types: "Western food",
      imageicon: "assets/images/icons/WeMeal.png",
    ),
    CategoryMeals(
      types: "Pastries",
      imageicon: "assets/images/icons/pizza.png",
    ),
    CategoryMeals(
      types: "Juices",
      imageicon: "assets/images/icons/ColdDrink.png",
    ),
    CategoryMeals(
      types: "Appetizers",
      imageicon: "assets/images/icons/Appetizer.png",
    ),
  ]
];

final data = [
  {
    "types": "شاورما",
    "restaurants": [
      {
        "namemain": "شاورما",
        "name": "1شاورما",
        "imageUrl": "assets/images/part1/donner.jpg",
        "imageIcon": "images/icons/icondoner.png",
        "price": "7000"
      },
      {
        "namemain": "",
        "name": "2شاورما",
        "imageUrl": "images/part1/chick.jpg",
        "imageIcon": "images/icons/icondoner.png",
        "price": "7000"
      },
      {
        "namemain": "",
        "name": "2شاورما",
        "imageUrl": "images/part1/chick.jpg",
        "imageIcon": "images/icons/icondoner.png",
        "price": "7000"
      },
      {
        "namemain": "",
        "name": "2شاورما",
        "imageUrl": "images/part1/chick.jpg",
        "imageIcon": "images/icons/icondoner.png",
        "price": "7000"
      },
    ]
  },
  {
    "types": "دجاج مشوي غاز",
    "restaurants": [
      {
        "namemain": "دجاج مشوي غاز",
        "name": "1دجاج مشوي غاز",
        "imageUrl": "images/part2/chicken.jpg",
        "imageIcon": "images/icons/chichenicon.jpg",
        "price": "7000"
      },
    ]
  },
  {
    "types": "مشاوي على الفحم",
    "restaurants": [
      {
        "namemain": "مشاوي على الفحم",
        "name": "1مشاوي على الفحم",
        "imageUrl": "images/part3/meat.jpg",
        "imageIcon": "images/icons/Bbq.png",
        "price": "7000"
      },
    ]
  },
  {
    "types": "غربي",
    "restaurants": [
      {
        "namemain": "غربي",
        "name": "1غربي",
        "imageUrl": "images/part4/hambrger.jpg",
        "imageIcon": "images/icons/WeMeal.png",
        "price": "7000"
      },
    ]
  },
  {
    "types": "معجنات",
    "restaurants": [
      {
        "namemain": "معجنات",
        "name": "1معجنات",
        "imageUrl": "images/part5/Pizza.jpg",
        "imageIcon": "images/icons/pizza.png",
        "price": "7000"
      },
    ]
  },
  {
    "types": "عصائر",
    "restaurants": [
      {
        "namemain": "عصائر",
        "name": "1عصائر",
        "imageUrl": "images/part6/drink.jpg",
        "imageIcon": "images/icons/ColdDrink.png",
        "price": "7000"
      },
    ]
  },
  {
    "types": "مقبلات",
    "restaurants": [
      {
        "namemain": "مقبلات",
        "name": "1مقبلات",
        "imageUrl": "images/part7/mokablaet.jpg",
        "imageIcon": "images/icons/Appetizer.png",
        "price": "7000"
      },
    ]
  },
];

final datalacale = [
  [
    {
      "types": "شاورما",
      "restaurants": [
        {
          "namemain": "شاورما",
          "name": "1شاورما",
          "imageUrl": "assets/images/part1/donner.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "namemain": "",
          "name": "2شاورما",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "namemain": "",
          "name": "2شاورما",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "namemain": "",
          "name": "2شاورما",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "دجاج مشوي غاز",
      "restaurants": [
        {
          "namemain": "دجاج مشوي غاز",
          "name": "1دجاج مشوي غاز",
          "imageUrl": "assets/images/part2/chicken.jpg",
          "imageIcon": "assets/images/icons/chichenicon.jpg",
          "price": "7000"
        },
      ]
    },
    {
      "types": "مشاوي على الفحم",
      "restaurants": [
        {
          "namemain": "مشاوي على الفحم",
          "name": "1مشاوي على الفحم",
          "imageUrl": "assets/images/part3/meat.jpg",
          "imageIcon": "assets/images/icons/Bbq.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "غربي",
      "restaurants": [
        {
          "namemain": "غربي",
          "name": "1غربي",
          "imageUrl": "assets/images/part4/hambrger.jpg",
          "imageIcon": "assets/images/icons/WeMeal.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "معجنات",
      "restaurants": [
        {
          "namemain": "معجنات",
          "name": "1معجنات",
          "imageUrl": "assets/images/part5/Pizza.jpg",
          "imageIcon": "assets/images/icons/pizza.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "عصائر",
      "restaurants": [
        {
          "namemain": "عصائر",
          "name": "1عصائر",
          "imageUrl": "assets/images/part6/drink.jpg",
          "imageIcon": "assets/images/icons/ColdDrink.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "مقبلات",
      "restaurants": [
        {
          "namemain": "مقبلات",
          "name": "1مقبلات",
          "imageUrl": "assets/images/part7/mokablaet.jpg",
          "imageIcon": "assets/images/icons/Appetizer.png",
          "price": "7000"
        },
      ]
    },
  ],
  [
    {
      "types": "شاورمە",
      "restaurants": [
        {
          "namemain": "شاورمە",
          "name": "1شاورمە",
          "imageUrl": "assets/images/part1/donner.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "namemain": "",
          "name": "2شاورمە",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "namemain": "",
          "name": "شاورمە3",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "namemain": "",
          "name": "شاورمە 4",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "مریشکی کبابی بە غاز",
      "restaurants": [
        {
          "namemain": "مریشکی کبابی بە غاز",
          "name": "1 مریشکی کبابی بە غاز",
          "imageUrl": "assets/images/part2/chicken.jpg",
          "imageIcon": "assets/images/icons/chichenicon.jpg",
          "price": "7000"
        },
      ]
    },
    {
      "types": "کۆبوونەوەی کبابی",
      "restaurants": [
        {
          "namemain": "کۆبوونەوەی کبابی",
          "name": "1کۆبوونەوەی کبابی",
          "imageUrl": "assets/images/part3/meat.jpg",
          "imageIcon": "assets/images/icons/Bbq.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "خواردنی رۆژئاوایی",
      "restaurants": [
        {
          "namemain": "خواردنی رۆژئاوایی",
          "name": "خواردنی رۆژئاوایی 1",
          "imageUrl": "assets/images/part4/hambrger.jpg",
          "imageIcon": "assets/images/icons/WeMeal.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "شیرینی",
      "restaurants": [
        {
          "namemain": "شیرینی",
          "name": "شیرینی 1",
          "imageUrl": "assets/images/part5/Pizza.jpg",
          "imageIcon": "assets/images/icons/pizza.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "شەربەتەکان",
      "restaurants": [
        {
          "namemain": "شەربەتەکان",
          "name": "شەربەتەکان 1",
          "imageUrl": "assets/images/part6/drink.jpg",
          "imageIcon": "assets/images/icons/ColdDrink.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "خواردنی پێشکەشکار",
      "restaurants": [
        {
          "namemain": "خواردنی پێشکەشکار",
          "name": "خواردنی پێشکەشکار 1",
          "imageUrl": "assets/images/part7/mokablaet.jpg",
          "imageIcon": "assets/images/icons/Appetizer.png",
          "price": "7000"
        },
      ]
    },
  ],
  [
    {
      "types": "Shawarma",
      "restaurants": [
        {
          "namemain": "Shawarma",
          "name": "Shawarma1",
          "imageUrl": "assets/images/part1/donner.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "namemain": "",
          "name": "Shawarma2",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "namemain": "",
          "name": "Shawarma3",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "namemain": "",
          "name": "Shawarma4",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "Gas grilled chicken",
      "restaurants": [
        {
          "namemain": "Gas grilled chicken",
          "name": "Gas grilled chicken 1",
          "imageUrl": "assets/images/part2/chicken.jpg",
          "imageIcon": "assets/images/icons/chichenicon.jpg",
          "price": "7000"
        },
        {
          "namemain": "Gas grilled chicken",
          "name": "Gas grilled chicken 2",
          "imageUrl": "assets/images/part2/chicken.jpg",
          "imageIcon": "assets/images/icons/chichenicon.jpg",
          "price": "7000"
        },
        {
          "namemain": "Gas grilled chicken",
          "name": "Gas grilled chicken 3",
          "imageUrl": "assets/images/part2/chicken.jpg",
          "imageIcon": "assets/images/icons/chichenicon.jpg",
          "price": "7000"
        },
      ]
    },
    {
      "types": "Grilled meat",
      "restaurants": [
        {
          "namemain": "Grilled meat",
          "name": "Grilled meat 1",
          "imageUrl": "assets/images/part3/meat.jpg",
          "imageIcon": "assets/images/icons/Bbq.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "Western food",
      "restaurants": [
        {
          "namemain": "Western food",
          "name": "Western food 1",
          "imageUrl": "assets/images/part4/hambrger.jpg",
          "imageIcon": "assets/images/icons/WeMeal.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "Pastries",
      "restaurants": [
        {
          "namemain": "Pastries",
          "name": "Pastries 1",
          "imageUrl": "assets/images/part5/Pizza.jpg",
          "imageIcon": "assets/images/icons/pizza.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "Juices",
      "restaurants": [
        {
          "namemain": "Juices",
          "name": "Juices 1",
          "imageUrl": "assets/images/part6/drink.jpg",
          "imageIcon": "assets/images/icons/ColdDrink.png",
          "price": "7000"
        },
      ]
    },
    {
      "types": "Appetizers",
      "restaurants": [
        {
          "namemain": "Appetizers",
          "name": "Appetizers 1",
          "imageUrl": "assets/images/part7/mokablaet.jpg",
          "imageIcon": "assets/images/icons/Appetizer.png",
          "price": "7000"
        },
        {
          "namemain": "Appetizers",
          "name": "Appetizers 2",
          "imageUrl": "assets/images/part7/mokablaet.jpg",
          "imageIcon": "assets/images/icons/Appetizer.png",
          "price": "7000"
        },
      ]
    },
  ],
];

final dataIcons = [
  {
    "types": "شاورما",
    "imageIcon": "assets/images/icons/icondoner.png",
  },
  {
    "types": "دجاج مشوي غاز",
    "imageIcon": "assets/images/icons/chichenicon.jpg",
  },
  {
    "types": "مشاوي على الفحم",
    "imageIcon": "assets/images/icons/Bbq.png",
  },
  {
    "types": "غربي",
    "imageIcon": "assets/images/icons/WeMeal.png",
  },
  {
    "types": "معجنات",
    "imageIcon": "assets/images/icons/pizza.png",
  },
  {
    "types": "عصائر",
    "imageIcon": "assets/images/icons/ColdDrink.png",
  },
  {
    "types": "مقبلات",
    "imageIcon": "assets/images/icons/Appetizer.png",
  },
];
