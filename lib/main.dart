import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tennis_app/ui/pages/intro_page.dart';
import 'package:tennis_app/utils/colors.dart';
import 'package:tennis_app/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tennis App',
      theme: ThemeData(

        primarySwatch: AppColors.createMaterialColor(Colors.white),
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark, // helps system overlay text color white
        ),
      ),
      home: const IntroPage(),
      routes: Routes.registerRoutes(),
    );
  }
}

