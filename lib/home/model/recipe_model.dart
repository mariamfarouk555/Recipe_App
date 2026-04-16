enum Category { breakfast, lunch, dinner, snack }

class Recipe {
  final String title;
  final String image;
  final int time;
  final double rating;
  final Category category;
  final String description;
  final List<String> ingredients;
  final String servings;
  final String difficulty;
  Recipe({
    required this.title,
    required this.image,
    required this.time,
    required this.rating,
    required this.category,
    required this.description,
    required this.ingredients,
    required this.servings,
    required this.difficulty,
  });
}
