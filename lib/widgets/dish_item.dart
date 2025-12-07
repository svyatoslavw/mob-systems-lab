import "package:flutter/material.dart";
import "package:mob_system/models/dish_model.dart";

class DishItem extends StatelessWidget {
  const DishItem({super.key, required this.dataItem});

  final DishModel dataItem;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    String buildSpicyIcons(int level) {
      return List.generate(level, (_) => '🌶️').join('');
    }

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        leading: Container(
          width: 52,
          height: 52,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Icon(
            Icons.restaurant_menu,
            size: 24,
            color: Colors.black54,
          ),
        ),
        title: Text(
          dataItem.name,
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Row(
          children: [
            const Icon(Icons.public, size: 16, color: Colors.grey),
            const SizedBox(width: 6),
            Text(
              dataItem.country,
              style: theme.textTheme.bodySmall?.copyWith(
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
        trailing: Text(
          buildSpicyIcons(dataItem.difficulty),
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
