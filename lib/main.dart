import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teda_toga/auth/login_or_register.dart';
import 'package:teda_toga/models/wisuda.dart';
import 'package:teda_toga/themes/theme_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    // theme provider
    MultiProvider(
      providers: [
        // theme provider
        ChangeNotifierProvider(create: (context) => ThemeProvider()),

        // wisuda provider
        ChangeNotifierProvider(create: (context) => Wisuda()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegister(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
