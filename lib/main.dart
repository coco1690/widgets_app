import 'package:flutter/material.dart';
import 'package:widgets_app/config/routes/app_routes.dart';
import 'package:widgets_app/config/theme/app_theme.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5).getTheme(),
      routerConfig: appRouter
    );
  }
}
