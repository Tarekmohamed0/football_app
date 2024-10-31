// إعداد الروتر باستخدام go_router
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/main/presentation/pages/main_screen.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: '/home', // مسار الصفحة الأولى
    routes: [
      GoRoute(
        path: '/home',
        name: 'home',
        builder: (context, state) => MainScreen(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: const Center(
        child: Text('404 - Page not found'),
      ),
    ),
  );
}
