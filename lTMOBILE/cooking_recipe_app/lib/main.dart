// lib/main.dart
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart'; // Import google_fonts
import 'screens/home_screen.dart'; // Import màn hình chính của bạn

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Định nghĩa 1 theme cơ sở
    final baseTheme = ThemeData(
      primarySwatch: Colors.indigo, // Bạn có thể đổi màu này
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

    return MaterialApp(
      title: 'Recipe App',
      // Áp dụng font chữ Google cho toàn bộ app
      // (Chúng ta sẽ cài google_fonts ở Giai đoạn 2,
      // nhưng cứ để code ở đây, nó sẽ không lỗi)
      theme: baseTheme.copyWith(
        textTheme: GoogleFonts.latoTextTheme(baseTheme.textTheme),
      ),
      // Đặt HomeScreen làm màn hình chính
      home: const HomeScreen(), 
      debugShowCheckedModeBanner: false, // Tắt banner "DEBUG"
    );
  }
}