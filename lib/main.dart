import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'screens/splash/splash_screen.dart';

void main() {
  runApp(const OnlineShoppingApp());
}

class OnlineShoppingApp extends StatelessWidget {
  const OnlineShoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Online Shopping App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      initialRoute: AppRoutes.splash,
      routes: AppRoutes.routes,
    );
  }
}
