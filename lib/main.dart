import 'package:flutter/material.dart';
import 'package:flutter_application/provider/current_state.dart';
import 'package:flutter_application/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CurrentState())],
      child: MaterialApp(debugShowCheckedModeBanner: false, routes: {
        "/": (context) => const HomePage(),
      }),
    );
  }
}
