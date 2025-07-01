import 'package:flutter/material.dart';
import 'package:islami/ui/home/homescreen.dart';
import 'package:islami/ui/home/tabs/quran-tab/suradetails.dart';
import 'package:islami/uitles/App_Theme.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
      HomeScreen.routeName:(context)=>HomeScreen(),
      SuraDetails.routName :(context)=>SuraDetails(),
      },
      themeMode: ThemeMode.dark,
      theme: AppTheme.darkTheme,
    );

  }

}