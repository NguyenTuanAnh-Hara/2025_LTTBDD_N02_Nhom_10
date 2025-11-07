import 'package:cooking_recipe_app/utils/localization_helper.dart';
import 'package:flutter/src/widgets/framework.dart';

enum RecipeCategory {
  food,
  drink,
}

class Recipe {
  final String id;
  final String nameKey;
  final String imageUrl;
  final List<String> ingredientKeys;
  final List<String> stepKeys;
  final int durationInMinutes;
  final RecipeCategory category;

  const Recipe({
    required this.id,
    required this.nameKey,
    required this.imageUrl,
    required this.ingredientKeys,
    required this.stepKeys,
    required this.durationInMinutes,
    required this.category,
  });

  String get name => LocalizationHelper.getText(context!, nameKey);

  BuildContext? get context => null;
}