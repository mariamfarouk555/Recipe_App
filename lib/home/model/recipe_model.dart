enum Category { breakfast, lunch, dinner, snack }

class Recipe {
  final String title;
  final String image;
  final int time;
  final double rating;
  final Category category;

  Recipe({
    required this.title,
    required this.image,
    required this.time,
    required this.rating,
    required this.category,
  });
}