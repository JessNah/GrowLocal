import 'package:flutter/material.dart';

class Category{
  String imageUrl;
  String categoryName;
  String id;
  int c;

  Category({this.imageUrl, this.categoryName, this.id, this.c});
}

List<Category> categories = [
  Category(
    imageUrl: "images/restaurantsCategory.jpg",
    categoryName: "Jasmine Indian Restaurant (258 reward points)",
    id:"1",
    c: 0xFF42A5F5
  ),
  Category(
      imageUrl: "images/groceryCategory.jpg",
      categoryName: "Asian Mart (2400 reward points)",
      id:"2",
      c: 0xFF42A5F5
  ),
  Category(
      imageUrl: "images/parksCategory.jpg",
      categoryName: "Indian Groceries(458 reward points)",
      id:"3",
      c: 0xFF42A5F5
  ),
  Category(
      imageUrl: "images/restaurantProblem.jpg",
      categoryName: "Thai Restaurant (100 reward points)",
      id:"4",
      c: 0xFF42A5F5
  ),
  Category(
      imageUrl: "images/restaurantProblem.jpg",
      categoryName: "Dominos Pizza (400 reward points)",
      id:"5",
      c: 0xFF42A5F5
  ),
  Category(
      imageUrl: "images/restaurantProblem.jpg",
      categoryName: "Vegan Restaurant (1200 reward points)",
      id:"6",
      c: 0xFF42A5F5
  )
];