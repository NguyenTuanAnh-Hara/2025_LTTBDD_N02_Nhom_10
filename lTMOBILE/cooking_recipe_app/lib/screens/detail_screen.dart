// lib/screens/detail_screen.dart
import 'package:flutter/material.dart';
import '../models/recipe.dart';

class DetailScreen extends StatelessWidget {
  // Khai báo biến để nhận dữ liệu được truyền sang
  final Recipe recipe;
  
  // Constructor, yêu cầu phải truyền vào 1 `recipe`
  const DetailScreen({super.key, required this.recipe});

  // Đây là widget trợ giúp để tạo tiêu đề (VD: "Nguyên liệu", "Các bước")
  // cho thống nhất, tránh lặp code
  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.name), // Hiển thị tên món ăn trên AppBar
      ),
      // Dùng SingleChildScrollView để cho phép cuộn khi nội dung quá dài
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1. Ảnh món ăn
            Image.network(
              recipe.imageUrl,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            
            // 2. Tiêu đề "Nguyên liệu"
            _buildSectionTitle(context, 'Nguyên liệu'),
            
            // 3. Danh sách nguyên liệu
            ListView.builder(
              itemCount: recipe.ingredients.length,
              shrinkWrap: true, // Bắt buộc khi lồng ListView trong Column
              physics: const NeverScrollableScrollPhysics(), // Tắt cuộn của ListView này
              itemBuilder: (ctx, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                // Thêm dấu • ở đầu dòng cho đẹp
                child: Text('• ${recipe.ingredients[index]}'),
              ),
            ),

            // 4. Tiêu đề "Các bước thực hiện"
            _buildSectionTitle(context, 'Các bước thực hiện'),
            
            // 5. Danh sách các bước
            ListView.builder(
              itemCount: recipe.steps.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (ctx, index) => ListTile(
                // Đánh số thứ tự các bước
                leading: CircleAvatar(
                  child: Text('#${index + 1}'),
                ),
                title: Text(recipe.steps[index]),
              ),
            ),
            
            // Thêm một khoảng trống ở dưới cùng
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}