import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_app/home/model/recipe_model.dart';
import 'package:recipe_app/home/widget/recipe_card.dart';

class FavScreen extends StatelessWidget {
  final List<Recipe> favorites;
  const FavScreen({super.key, required this.favorites});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Center(
          child: Text(
            'Favorite Recipes',
            style: GoogleFonts.aboreto(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          return RecipeCard(recipe: favorites[index]);
        },
      ),
    );
  }
}
