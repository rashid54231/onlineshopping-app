import 'package:flutter/material.dart';
import '../screens/splash/splash_screen.dart';
import '../screens/auth/login_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/product/product_screen.dart';
import '../screens/cart/cart_screen.dart';

class AppRoutes {
  // Route Names
  static const String splash = '/';
  static const String login = '/login';
  static const String home = '/home';
  static const String product = '/product';
  static const String cart = '/cart';

  // Route Map
  static Map<String, WidgetBuilder> routes = {
    splash: (context) => const SplashScreen(),
    login: (context) => const LoginScreen(),
    home: (context) => const HomeScreen(),
    product: (context) => const ProductScreen(),
    cart: (context) => const CartScreen(),
  };
}
