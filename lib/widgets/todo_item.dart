import 'package:flutter/material.dart';
import 'package:todo_list/model/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;

  const TodoItem({
    super.key,
    required this.todo,
    required this.onDeleteItem,
    required this.onToDoChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
          color: Colors.blue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
            decorationThickness: 2,
          ),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.symmetric(vertical: 10),
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            iconSize: 20,
            icon: const Icon(Icons.delete),
            onPressed: () {
              onDeleteItem(todo.id, todo.todoText);
            },
          ),
        ),
      ),
    );
  }
}
