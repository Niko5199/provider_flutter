import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_flutter/config/router/app_router.dart';
import 'package:provider_flutter/presentation/providers/cart_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => CartProvider(), child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}
