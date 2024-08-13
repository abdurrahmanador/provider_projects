import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer/provider/theme_changer_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Changer"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            RadioListTile<ThemeMode>(
                title: Text("Light Theme"),
                value: ThemeMode.light,
                groupValue: themeProvider.themeMode,
                onChanged: themeProvider.setThemeMode),
            RadioListTile<ThemeMode>(
                title: Text("Dart Theme"),
                value: ThemeMode.dark,
                groupValue: themeProvider.themeMode,
                onChanged: themeProvider.setThemeMode),
            RadioListTile<ThemeMode>(
                title: Text("System Theme"),
                value: ThemeMode.system,
                groupValue: themeProvider.themeMode,
                onChanged: themeProvider.setThemeMode)
          ],
        ),
      ),
    );
  }
}
