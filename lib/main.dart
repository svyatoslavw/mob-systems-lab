import 'package:flutter/material.dart';
import 'package:mob_system/widgets/dish_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DishList());
  }
}
