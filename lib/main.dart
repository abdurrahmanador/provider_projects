import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme_changer/home_screen.dart';
import 'package:theme_changer/provider/theme_changer_provider.dart';

void main() {
  runApp( ChangeNotifierProvider(
    create: (_)=>ThemeProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context){
      final themeChanger=Provider.of<ThemeProvider>(context);
      return MaterialApp(
        title: 'Theme Changer',
        themeMode: themeChanger.themeMode,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          brightness: Brightness.light,
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark
        ),
        home:  HomeScreen(),
      );
    });
  }
}

