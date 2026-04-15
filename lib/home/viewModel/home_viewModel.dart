import 'package:flutter/material.dart';

import '../model/recipe_model.dart';

class HomeViewModel extends ChangeNotifier {
  String searchQuery = "";
  Category selectedCategory = Category.breakfast;

  List<Recipe> allRecipes = [
    Recipe(
      title: "Blueberry coffee cake muffins",
      image: "assets/images/BlueberryCoffeeCakeMuffins.png",
      time: 10,
      rating: 4.3,
      category: Category.breakfast,
    ),
    Recipe(
      title: "Garlic and Herb biscuits",
      image: "assets/images/garlicandherbbiscuits.jpg",
      time: 15,
      rating: 3.2,
      category: Category.breakfast,
    ),
    Recipe(
      title: "Oatmeal Glazed cake",
      image: "assets/images/OatmealGlazedcake.png",
      time: 40,
      rating: 4.7,
      category: Category.breakfast,
    ),
    Recipe(
      title: "Pancakes",
      image: "assets/images/pancakes.png",
      time: 7,
      rating: 5,
      category: Category.breakfast,
    ),    Recipe(
      title: "Yoghurt salad",
      image: "assets/images/yougurtsalad.png",
      time: 10,
      rating: 4,
      category: Category.breakfast,
    ),
    Recipe(
      title: "Chicken salad",
      image: "assets/images/chickensalad.png",
      time: 20,
      rating: 4.8,
      category: Category.lunch,
    ),
    Recipe(
      title: "Burger",
      image: "assets/images/burger.jpg",
      time: 50,
      rating: 4.9,
      category: Category.lunch,
    ),
    Recipe(
      title: "Pasta",
      image: "assets/images/pasta.jpg",
      time: 30,
      rating: 3.7,
      category: Category.lunch,
    ),
    Recipe(
      title: " Italian Pizza",
      image: "assets/images/pizza.jpg",
      time: 90,
      rating: 4.2,
      category: Category.lunch,
    ),
    Recipe(
      title: "Turkey and Cheese",
      image: "assets/images/turkeycheese.jpg",
      time: 5,
      rating: 4,
      category: Category.dinner,
    ),
    Recipe(
      title: "Cheese Cake",
      image: "assets/images/cheesecake.jpg",
      time: 30,
      rating: 4.8,
      category: Category.dinner,
    ),
    Recipe(
      title: "Mashed Potato",
      image: "assets/images/mashedpotato.jpg",
      time: 10,
      rating: 4.1,
      category: Category.dinner,
    ),
    Recipe(
      title: "Cookies",
      image: "assets/images/cookies.jpeg",
      time: 40,
      rating:3,
      category: Category.snack,
    ),
    Recipe(
      title: "strawberry smoothie",
      image: "assets/images/strawberrysmoothie.jpg",
      time: 15,
      rating: 4.4,
      category: Category.snack,
    ),
    Recipe(
      title: "Iced Coffee",
      image: "assets/images/icedcoffee.jpg",
      time: 20,
      rating: 4.8,
      category: Category.snack,
    ),
  ];
  List<Recipe> get filteredRecipes {
    return allRecipes.where((recipe) {
      final matchesCategory = recipe.category == selectedCategory;

      final matchesSearch = recipe.title
          .toLowerCase()
          .contains(searchQuery.toLowerCase());

      return matchesCategory && matchesSearch;
    }).toList();
  }
  void updateSearch(String value) {
    searchQuery = value;
    notifyListeners();
  }
  void changeCategory(Category category) {
    selectedCategory = category;
    notifyListeners();
  }
}