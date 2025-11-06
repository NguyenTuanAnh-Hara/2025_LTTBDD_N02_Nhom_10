enum RecipeCategory {
  food,
  drink,
}

class Recipe {
  final String id;
  final String name;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int durationInMinutes;
  final RecipeCategory category;

  const Recipe({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.ingredients,
    required this.steps,
    required this.durationInMinutes,
    required this.category,
  });
}