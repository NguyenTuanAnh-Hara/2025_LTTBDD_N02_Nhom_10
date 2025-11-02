// lib/screens/home_screen.dart
import 'package:cooking_recipe_app/data.dart/mock_data.dart';
import 'package:flutter/material.dart';
import '../widgets/recipe_card_item.dart'; 

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Công thức Nấu ăn 🍳'),
      ),
      // VVVVVV THAY ĐỔI TỪ ĐÂY VVVVVV
      body: GridView.builder(
        padding: const EdgeInsets.all(10), // Thêm padding cho toàn bộ lưới
        itemCount: mockRecipes.length,
        // Cấu hình lưới
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,      // Mấu chốt: 2 cột
          crossAxisSpacing: 10,   // Khoảng cách ngang giữa các ô
          mainAxisSpacing: 10,    // Khoảng cách dọc giữa các ô
          childAspectRatio: 0.8,  // Tỷ lệ rộng/cao (bạn có thể chỉnh 1.0 để nó vuông)
        ),
        itemBuilder: (context, index) {
          final recipe = mockRecipes[index];
          
          // Widget card của bạn giữ nguyên, GridView sẽ tự sắp xếp
          return RecipeCardItem(recipe: recipe);
        },
      ),
      // ^^^^^^ THAY ĐỔI ĐẾN ĐÂY ^^^^^^
    );
  }
}