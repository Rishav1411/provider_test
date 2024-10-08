import 'package:flutter/material.dart';
import 'package:new_app/home.dart';
import 'package:new_app/list_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NumbersListProvider())
      ],
      child: const MaterialApp(
        home: Home(),
      ),
    );
  }
}
