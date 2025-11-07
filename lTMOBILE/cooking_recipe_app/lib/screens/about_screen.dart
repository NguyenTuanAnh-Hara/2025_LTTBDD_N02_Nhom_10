import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/locale_provider.dart';
import '../l10n/app_localizations.dart';

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
    final provider = Provider.of<LocaleProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.aboutTitle),
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
            context,
            AppLocalizations.of(context)!.aboutCourse,
            AppLocalizations.of(context)!.aboutCourseName,
          ),
          _buildInfoRow(
            context,
            AppLocalizations.of(context)!.aboutProject,
            AppLocalizations.of(context)!.aboutProjectName,
          ),
          _buildInfoRow(
            context,
            AppLocalizations.of(context)!.aboutTeacher,
            AppLocalizations.of(context)!.aboutTeacherName,
          ),
          _buildInfoRow(
            context,
            AppLocalizations.of(context)!.aboutStudent,
            AppLocalizations.of(context)!.aboutStudentName,
          ),
          const Divider(height: 30, indent: 16, endIndent: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              AppLocalizations.of(context)!.aboutLanguage,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  provider.setLocale(const Locale('vi'));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: provider.locale.languageCode == 'vi'
                      ? Theme.of(context).primaryColor
                      : Colors.grey[300],
                  foregroundColor: provider.locale.languageCode == 'vi'
                      ? Colors.white
                      : Colors.black54,
                ),
                child: Text(AppLocalizations.of(context)!.aboutLangVI),
              ),
              ElevatedButton(
                onPressed: () {
                  provider.setLocale(const Locale('en'));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: provider.locale.languageCode == 'en'
                      ? Theme.of(context).primaryColor
                      : Colors.grey[300],
                  foregroundColor: provider.locale.languageCode == 'en'
                      ? Colors.white
                      : Colors.black54,
                ),
                child: Text(AppLocalizations.of(context)!.aboutLangEN),
              ),
            ],
          ),
        ],
      ),
    );
  }
}