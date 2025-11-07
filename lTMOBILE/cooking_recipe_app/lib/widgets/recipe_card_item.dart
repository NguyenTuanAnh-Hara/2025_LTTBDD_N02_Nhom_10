// lib/widgets/recipe_card_item.dart
import 'package:flutter/material.dart';
import '../models/recipe.dart';
import '../screens/detail_screen.dart';

class RecipeCardItem extends StatelessWidget {
  final Recipe recipe;

  const RecipeCardItem({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: const EdgeInsets.all(10), // <<<<< XÓA DÒNG NÀY
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        // ... code còn lại giữ nguyên ...
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailScreen(recipe: recipe, heroTag: '',),
            ),
          );
        },
        child: Stack(
          children: [
            // ... (Image.asset, Container, Text)
            Image.asset(
              recipe.imageUrl,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      // ignore: deprecated_member_use
                      Colors.black.withOpacity(0.8),
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 15,
              right: 15,
              child: Text(
                recipe.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}