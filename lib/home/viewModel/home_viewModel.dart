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
      description:
          'Soft muffins with a blueberry center and a crunchy cinnamon streusel topping',
      servings: '12 muffins',
      ingredients: [
        '1/2 cups\n all-purpose flour',
        '3/4 cup \n granulated sugar',
        '1/2  teaspoon salt',
        '2 teaspoons baking powder',
        '1/3 cup \n vegetable oil',
        '1 large egg',
        '1/3 cup milk',
        '1 teaspoon vanilla extract',
        '1 cup \nfresh blueberries',
      ],
      difficulty: 'Easy',
    ),
    Recipe(
      title: "Garlic and Herb biscuits",
      image: "assets/images/garlicandherbbiscuits.jpg",
      time: 15,
      rating: 3.2,
      category: Category.breakfast,
      difficulty: 'Medium',
      description:
          'Flaky, buttery biscuits infused with savory garlic and fresh green herbs.',
      servings: '8-10 biscuits',
      ingredients: [
        '2 cups all-purpose flour',
        '1 tablespoon baking powder',
        '1/2 teaspoon salt',
      ],
    ),
    Recipe(
      title: "Oatmeal Glazed cake",
      image: "assets/images/OatmealGlazedcake.png",
      time: 40,
      rating: 4.7,
      category: Category.breakfast,
      difficulty: 'Hard',
      description: 'A moist and flavorful cake with a sweet oatmeal glaze.',
      servings: '8 Servings',
      ingredients: [
        '2 cups all-purpose flour',
        '1 cup granulated sugar',
        '1/2 cup butter, softened',
        '2 large eggs',
        '1 cup milk',
        '1 teaspoon vanilla extract',
        '1 teaspoon baking powder',
        '1/2 teaspoon salt',
        '1 cup rolled oats',
        '1/2 cup honey',
        '1/4 cup water',
      ],
    ),
    Recipe(
      title: "Pancakes",
      image: "assets/images/pancakes.png",
      time: 7,
      rating: 5,
      category: Category.breakfast,
      difficulty: 'Easy',
      description:
          'Fluffy and delicious pancakes perfect for a weekend breakfast.',
      servings: '8-10 pancakes',
      ingredients: [
        '2 cups all-purpose flour',
        '2 tablespoons granulated sugar',
        '2 teaspoons baking powder',
        '1/2 teaspoon salt',
        '1 cup milk',
        '1 large egg',
        '2 tablespoons melted butter',
      ],
    ),
    Recipe(
      title: "Yoghurt salad",
      image: "assets/images/yougurtsalad.png",
      time: 10,
      rating: 4,
      category: Category.breakfast,
      difficulty: 'Easy',
      description:
          'A refreshing and healthy salad made with yogurt and fresh fruits.',
      servings: '4 servings',
      ingredients: [
        '1 cup plain Greek yogurt',
        '1/2 cup diced apple',
        '1/4 cup chopped walnuts',
        '1 tablespoon honey',
      ],
    ),
    Recipe(
      title: "Chicken salad",
      image: "assets/images/chickensalad.png",
      time: 20,
      rating: 4.8,
      category: Category.lunch,
      difficulty: 'Medium',
      description:
          'A hearty and delicious salad with grilled chicken and fresh vegetables.',
      servings: '4 servings',
      ingredients: [
        '2 cups mixed greens',
        '1 cup diced chicken breast',
        '1/2 cup cherry tomatoes',
        '1/4 cup sliced cucumber',
        '1/4 cup crumbled feta cheese',
        '2 tablespoons olive oil',
        '1 tablespoon lemon juice',
      ],
    ),
    Recipe(
      title: "Burger",
      image: "assets/images/burger.jpg",
      time: 50,
      rating: 4.9,
      category: Category.lunch,
      difficulty: 'Medium',
      description:
          'A classic burger with a juicy beef patty and fresh vegetables.',
      servings: '4 servings',
      ingredients: [
        '4 hamburger buns',
        '4 beef patties',
        '4 slices of cheese',
        '4 lettuce leaves',
        '4 tomato slices',
        '4 onion rings',
        '4 tablespoons ketchup',
        '4 tablespoons mustard',
      ],
    ),
    Recipe(
      title: "Pasta",
      image: "assets/images/pasta.jpg",
      time: 30,
      rating: 3.7,
      category: Category.lunch,
      difficulty: 'Medium',
      description: 'A delicious and easy-to-make pasta dish.',
      servings: '4 servings',
      ingredients: [
        '2 cups pasta',
        '2 tablespoons olive oil',
        '1 clove garlic, minced',
        '1 cup canned tomatoes',
        '1/2 cup grated Parmesan cheese',
        '1/4 cup fresh basil leaves',
      ],
    ),
    Recipe(
      title: " Italian Pizza",
      image: "assets/images/pizza.jpg",
      time: 90,
      rating: 4.2,
      category: Category.lunch,
      difficulty: 'Medium',
      description:
          'A classic Italian pizza with a crispy crust and flavorful toppings.',
      servings: '4 servings',
      ingredients: [
        '1 pizza dough',
        '1/2 cup tomato sauce',
        '1 cup shredded mozzarella cheese',
        '1/4 cup sliced pepperoni',
        '1/4 cup sliced mushrooms',
        '1/4 cup sliced bell peppers',
        '1/4 cup sliced onions',
      ],
    ),
    Recipe(
      title: "Turkey and Cheese",
      image: "assets/images/turkeycheese.jpg",
      time: 5,
      rating: 4,
      category: Category.dinner,
      difficulty: 'Easy',
      description: 'A simple and delicious sandwich with turkey and cheese.',
      servings: '1 serving',
      ingredients: [
        '2 slices of bread',
        '2 slices of turkey',
        '1 slice of cheese',
        'Lettuce and tomato (optional)',
        'Mayonnaise or mustard (optional)',
      ],
    ),
    Recipe(
      title: "Cheese Cake",
      image: "assets/images/cheesecake.jpg",
      time: 30,
      rating: 4.8,
      category: Category.dinner,
      difficulty: 'Medium',
      description: 'A rich and creamy cheesecake with a graham cracker crust.',
      servings: '8 servings',
      ingredients: [
        '2 cups cream cheese',
        '1 cup granulated sugar',
        '1 teaspoon vanilla extract',
        '3 large eggs',
        '1 cup graham cracker crumbs',
        '1/4 cup melted butter',
      ],
    ),
    Recipe(
      title: "Mashed Potato",
      image: "assets/images/mashedpotato.jpg",
      time: 10,
      rating: 4.1,
      category: Category.dinner,
      difficulty: 'Easy',
      description:
          'Creamy and delicious mashed potatoes perfect as a side dish.',
      servings: '4 servings',
      ingredients: [
        '4 large potatoes, peeled and cubed',
        '1/2 cup milk',
        '1/4 cup butter',
        'Salt and pepper to taste',
      ],
    ),
    Recipe(
      title: "Cookies",
      image: "assets/images/cookies.jpeg",
      time: 40,
      rating: 3,
      category: Category.snack,
      difficulty: 'Easy',
      description:
          'Delicious and chewy cookies that are perfect for a sweet treat.',
      servings: '12 servings',
      ingredients: [
        '2 cups all-purpose flour',
        '1 cup butter, softened',
        '3/4 cup granulated sugar',
        '3/4 cup brown sugar',
        '2 large eggs',
        '2 teaspoons vanilla extract',
        '1 teaspoon baking soda',
        '1/2 teaspoon salt',
        '2 cups chocolate chips',
      ],
    ),
    Recipe(
      title: "strawberry smoothie",
      image: "assets/images/strawberrysmoothie.jpg",
      time: 15,
      rating: 4.4,
      category: Category.snack,
      difficulty: 'Easy',
      description: 'A refreshing and healthy strawberry smoothie.',
      servings: '2 servings',
      ingredients: [
        '2 cups fresh strawberries',
        '1 cup milk',
        '1/2 cup granulated sugar',
        '1 teaspoon vanilla extract',
      ],
    ),
    Recipe(
      title: "Iced Coffee",
      image: "assets/images/icedcoffee.jpg",
      time: 20,
      rating: 4.8,
      category: Category.snack,
      difficulty: 'Easy',
      description: 'A refreshing cold coffee drink perfect for hot days.',
      servings: '2 servings',
      ingredients: [
        '2 cups brewed coffee, cooled',
        '1 cup milk',
        '1/2 cup granulated sugar',
        '1 teaspoon vanilla extract',
      ],
    ),
  ];
  List<Recipe> get filteredRecipes {
    return allRecipes.where((recipe) {
      final matchesCategory = recipe.category == selectedCategory;

      final matchesSearch = recipe.title.toLowerCase().contains(
        searchQuery.toLowerCase(),
      );

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
