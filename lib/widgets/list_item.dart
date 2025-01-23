import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback onDelete;

  const ListItem({
    super.key,
    required this.title,
    required this.content,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: Key(title),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) {
        onDelete();
      },
      background: Container(color: Colors.red),
      child: ListTile(
        title: Text(title),
        subtitle: Text(
          content.length > 100 ? '${content.substring(0, 100)}...' : content,
        ),
      ),
    );
  }
}
