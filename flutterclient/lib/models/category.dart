import 'package:flutter/material.dart';

class Category{
  String imageUrl;
  String categoryName;
  int c;

  Category({this.imageUrl, this.categoryName, this.c});
}

List<Category> categories = [
  Category(
    imageUrl: "images/restaurantsCategory.jpg",
    categoryName: "Jasmine Indian Restaurant (258 reward points)",
    c: 0xFF42A5F5
  ),
  Category(
      imageUrl: "images/groceryCategory.jpg",
      categoryName: "Asian Mart (2400 reward points)",
      c: 0xFF42A5F5
  ),
  Category(
      imageUrl: "images/parksCategory.jpg",
      categoryName: "Indian Groceries(458 reward points)",
      c: 0xFF42A5F5
  ),
];