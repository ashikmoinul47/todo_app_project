import 'package:flutter/material.dart';
import 'package:todo_app_project/entities/todo.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          'Title',
          style: TextStyle(decoration: _getTextDecoration(todo.isDone)),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('description'), Text('time')],
        ),
        trailing: _buildRoundedIconButton(),
      ),
    );
  }

  Widget _buildRoundedIconButton() {
    return CircleAvatar(child: Icon(_getIcon(true)));
  }

  IconData _getIcon(bool isDone) {
    return isDone ? Icons.check : Icons.clear;
  }

  TextDecoration? _getTextDecoration(bool isDone) {
    return isDone ? TextDecoration.lineThrough : null;
  }
}
