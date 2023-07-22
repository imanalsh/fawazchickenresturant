import './models/category.dart';

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

final datalacale = [
  [
    {
      "types": "شاورما",
      "restaurants": [
        {
          "id": 1,
          "namemain": "شاورما",
          "name": "1شاورما",
          "imageUrl": "assets/images/part1/donner.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "id": 2,
          "namemain": "",
          "name": "2شاورما",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "id": 3,
          "namemain": "",
          "name": "2شاورما",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "id": 4,
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
          "id": 1,
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
          "id": 1,
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
          "id": 1,
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
          "id": 1,
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
          "id": 1,
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
          "id": 1,
          "namemain": "مقبلات",
          "name": "1مقبلات",
          "imageUrl": "assets/images/part7/mokablaet.jpg",
          "imageIcon": "assets/images/icons/Appetizer.png",
          "price": "7000"
        },
        {
          "id": 2,
          "namemain": "",
          "name": "2مقبلات",
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
          "id": 1,
          "namemain": "شاورمە",
          "name": "1شاورمە",
          "imageUrl": "assets/images/part1/donner.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "3000"
        },
        {
          "id": 2,
          "namemain": "",
          "name": "2شاورمە",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "3000"
        },
        {
          "id": 3,
          "namemain": "",
          "name": "شاورمە3",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "3000"
        },
        {
          "id": 4,
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
          "id": 1,
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
          "id": 1,
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
          "id": 1,
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
          "id": 1,
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
          "id": 1,
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
          "id": 1,
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
          "id": 1,
          "namemain": "Shawarma",
          "name": "Shawarma1",
          "imageUrl": "assets/images/part1/donner.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "id": 2,
          "namemain": "",
          "name": "Shawarma2",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "id": 3,
          "namemain": "",
          "name": "Shawarma3",
          "imageUrl": "assets/images/part1/chick.jpg",
          "imageIcon": "assets/images/icons/icondoner.png",
          "price": "7000"
        },
        {
          "id": 4,
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
          "id": 1,
          "namemain": "Gas grilled chicken",
          "name": "Gas grilled chicken 1",
          "imageUrl": "assets/images/part2/chicken.jpg",
          "imageIcon": "assets/images/icons/chichenicon.jpg",
          "price": "7000"
        },
        {
          "id": 2,
          "namemain": "",
          "name": "Gas grilled chicken 2",
          "imageUrl": "assets/images/part2/chicken.jpg",
          "imageIcon": "assets/images/icons/chichenicon.jpg",
          "price": "7000"
        },
        {
          "id": 3,
          "namemain": "",
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
          "id": 1,
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
          "id": 1,
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
          "id": 1,
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
          "id": 1,
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
          "id": 1,
          "namemain": "Appetizers",
          "name": "Appetizers 1",
          "imageUrl": "assets/images/part7/mokablaet.jpg",
          "imageIcon": "assets/images/icons/Appetizer.png",
          "price": "7000"
        },
        {
          "id": 2,
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
