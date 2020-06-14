import 'package:flutter/material.dart';

import 'deals.dart';


class Category{
  String imageUrl;
  String categoryName;
  String id;
  int c;
  List<Deals> d;

  Category({this.imageUrl, this.categoryName, this.id, this.c, this.d});
}

List<Category> categories = [
  Category(
    imageUrl: "images/restaurantsCategory.jpg",
    categoryName: "Jasmine Indian Restaurant\n (258 reward points)",
    id:"1",
    c: 0xFF42A5F5,
    d: [
      Deals(
        dealData: "Get 2x rewards on oil by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 1.5x rewards on pasta by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 1.5 rewards on rice by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 1.2x rewards on toor dal by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 5x rewards on paneer by 30/Jun/2020",
      ),
      Deals(
        dealData: "Get 5% off on all flour by 30/Jun/2020",
      )
    ]
  ),
  Category(
      imageUrl: "images/groceryCategory.jpg",
      categoryName: "Asian Mart\n (2400 reward points)",
      id:"2",
      c: 0xFF42A5F5,
      d: [
        Deals(
          dealData: "Get 2x rewards on oil by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5x rewards on pasta by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5 rewards on rice by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.2x rewards on toor dal by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5x rewards on paneer by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5% off on all flour by 30/Jun/2020",
        )
      ]
  ),
  Category(
      imageUrl: "images/spices-of-india.jpg",
      categoryName: "Indian Groceries\n(458 reward points)",
      id:"3",
      c: 0xFF42A5F5,
      d: [
  Deals(
  dealData: "Get 2x rewards on oil by 30/Jun/2020",
  ),
  Deals(
    dealData: "Get 1.5x rewards on pasta by 30/Jun/2020",
  ),
  Deals(
    dealData: "Get 1.5 rewards on rice by 30/Jun/2020",
  ),
  Deals(
    dealData: "Get 1.2x rewards on toor dal by 30/Jun/2020",
  ),
  Deals(
    dealData: "Get 5x rewards on paneer by 30/Jun/2020",
  ),
  Deals(
    dealData: "Get 5% off on all flour by 30/Jun/2020",
  )
]
  ),
  Category(
      imageUrl: "images/restaurantProblem.jpg",
      categoryName: "Thai Restaurant\n (100 reward points)",
      id:"4",
      c: 0xFF42A5F5,
      d: [
        Deals(
          dealData: "Get 2x rewards on oil by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5x rewards on pasta by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5 rewards on rice by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.2x rewards on toor dal by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5x rewards on paneer by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5% off on all flour by 30/Jun/2020",
        )
      ]
  ),
  Category(
      imageUrl: "images/restaurantProblem.jpg",
      categoryName: "Alan's Pizza \n(400 reward points)",
      id:"5",
      c: 0xFF42A5F5,
      d: [
        Deals(
          dealData: "Get 2x rewards on oil by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5x rewards on pasta by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5 rewards on rice by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.2x rewards on toor dal by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5x rewards on paneer by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5% off on all flour by 30/Jun/2020",
        )
      ]
  ),
  Category(
      imageUrl: "images/restaurantProblem.jpg",
      categoryName: "Vegan Restaurant\n (1200 reward points)",
      id:"6",
      c: 0xFF42A5F5,
      d: [
        Deals(
          dealData: "Get 2x rewards on oil by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5x rewards on pasta by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.5 rewards on rice by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 1.2x rewards on toor dal by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5x rewards on paneer by 30/Jun/2020",
        ),
        Deals(
          dealData: "Get 5% off on all flour by 30/Jun/2020",
        )
      ]
  )
];