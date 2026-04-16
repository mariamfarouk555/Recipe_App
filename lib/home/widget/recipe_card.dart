import 'package:flutter/material.dart';
import 'package:recipe_app/Recipe_Description/Recipe_decrip.dart';

import '../model/recipe_model.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RecipeDecrip(recipe: recipe)),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            CircleAvatar(radius: 25, backgroundImage: AssetImage(recipe.image)),
            SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Icon(Icons.access_time, size: 14),
                      Text(" ${recipe.time} mins"),
                      SizedBox(width: 10),
                      Icon(Icons.star, size: 14, color: Colors.amber),
                      Text(" ${recipe.rating}"),
                    ],
                  ),
                ],
              ),
            ),

            Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
}
