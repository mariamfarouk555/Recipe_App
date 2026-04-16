import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/home/model/recipe_model.dart';
import 'package:recipe_app/home/widget/recipe_card.dart';

import '../home/viewModel/home_viewModel.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key, required List<dynamic> favorites});

  @override
  Widget build(BuildContext context) {
    final favorites = context.watch<HomeViewModel>().favorites;
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
      body: favorites.isEmpty
          ? Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              "assets/animation/No Favorite Iconn.json",
              width: 400,
              repeat: true,
              fit: BoxFit.contain,
            ),

            SizedBox(height: 20),

            Text(
              "No favorites yet",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      )
          : ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          return RecipeCard(
            recipe: favorites[index],
          );
        },
      ),
    );
  }
}
