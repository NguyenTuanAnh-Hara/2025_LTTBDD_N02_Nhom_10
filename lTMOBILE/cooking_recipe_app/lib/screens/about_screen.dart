import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  Widget _buildInfoRow(BuildContext context, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title: ',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          Expanded(
            child: Text(
              value,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Thông tin nhóm'),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20),
        children: [
          const CircleAvatar(
            radius: 50,
            child: Icon(Icons.group, size: 50),
          ),
          const SizedBox(height: 20),
          _buildInfoRow(
              context, 'Môn học', 'Lập trình cho thiết bị di động'),
          _buildInfoRow(
              context, 'Đề tài', 'Ứng dụng Công thức Nấu ăn (Recipe App)'),
          _buildInfoRow(context, 'GVHD', 'Nguyễn Xuân Quế'),
          _buildInfoRow(context, 'Nhóm', 'Nhóm 10'),
          _buildInfoRow(context, 'SV 1', 'Nguyễn Tuấn Anh - 23010575'),
        ],
      ),
    );
  }
}