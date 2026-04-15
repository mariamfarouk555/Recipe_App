import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/recipe_model.dart';
import '../viewModel/home_viewModel.dart';
import '../widget/category_chip.dart';
import '../widget/recipe_card.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<HomeViewModel>(context);

    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
          Stack(
          alignment: Alignment.center,
          children: [

            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: AssetImage("assets/images/foodwallpaper.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),


          ],
        ),
            SizedBox(height: 15),
            TextField(
              onChanged: (value) {
                context.read<HomeViewModel>().updateSearch(value);
              },
              decoration: InputDecoration(
                hintText: "Search here",
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            SizedBox(height: 15),
            Consumer<HomeViewModel>(
              builder: (context, vm, child) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CategoryChip(
                        text: "Breakfast",
                        isSelected: vm.selectedCategory == Category.breakfast,
                        onTap: () => vm.changeCategory(Category.breakfast),
                      ),
                      CategoryChip(
                        text: "Lunch",
                        isSelected: vm.selectedCategory == Category.lunch,
                        onTap: () => vm.changeCategory(Category.lunch),
                      ),
                      CategoryChip(
                        text: "Dinner",
                        isSelected: vm.selectedCategory == Category.dinner,
                        onTap: () => vm.changeCategory(Category.dinner),
                      ),
                      CategoryChip(
                        text: "Snack",
                        isSelected: vm.selectedCategory == Category.snack,
                        onTap: () => vm.changeCategory(Category.snack),
                      ),
                    ],
                  ),
                );
              },
            ),

            Expanded(
              child: ListView.builder(
                itemCount: vm.filteredRecipes.length,
                itemBuilder: (context, index) {
                  return RecipeCard(recipe: vm.filteredRecipes[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}