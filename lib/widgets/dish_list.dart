import 'package:flutter/material.dart';
import 'package:mob_system/models/dish_model.dart';
import 'package:mob_system/widgets/dish_item.dart';

class DishList extends StatefulWidget {
  const DishList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DishListState();
  }
}

class _DishListState extends State<DishList> {
  final List<DishModel> _data = [
    DishModel(id: '1', name: 'Pizza', country: 'Italy', difficulty: 2),
    DishModel(id: '2', name: 'Sushi', country: 'Japan', difficulty: 4),
    DishModel(id: '3', name: 'Borscht', country: 'Ukraine', difficulty: 3),
    DishModel(id: '4', name: 'Croissant', country: 'France', difficulty: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorite Dishes')),
      body: ListView.builder(
        itemCount: _data.length,
        itemBuilder: (context, index) => Dismissible(
          key: ValueKey(_data[index].id),
          background: Container(
            color: Theme.of(context).colorScheme.error.withOpacity(0.75),
            margin: const EdgeInsets.symmetric(horizontal: 16),
          ),
          child: DishItem(dataItem: _data[index]),
        ),
      ),
    );
  }
}
