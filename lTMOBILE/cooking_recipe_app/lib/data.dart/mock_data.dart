// lib/data/mock_data.dart
import '../models/recipe.dart';

const List<Recipe> mockRecipes = [
  Recipe(
    id: 'r1',
    name: 'Spaghetti Carbonara',
    // Thay URL bằng đường dẫn local
    imageUrl: 'image/download.jpg',
    ingredients: ['Spaghetti', 'Trứng', 'Phô mai Pecorino', 'Thịt ba rọi', 'Tiêu'],
    steps: ['Luộc mì 8-10 phút.', 'Xào thịt ba rọi cho đến khi giòn.'],
  ),
  Recipe(
    id: 'r2',
    name: 'Phở Bò Hà Nội',
    // Thay URL bằng đường dẫn local
    imageUrl: 'image/images.jpg',
    ingredients: ['Bánh phở', 'Thịt bò', 'Xương ống bò', 'Hành tây, Gừng'],
    steps: ['Hầm xương ống trong 4-6 giờ.', 'Trần bánh phở và thịt bò.'],
  ),
];