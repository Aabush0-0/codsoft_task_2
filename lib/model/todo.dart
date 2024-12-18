class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Learn to make an omlette', isDone: false),
      ToDo(id: '02', todoText: 'Do Exercise', isDone: true),
      ToDo(
        id: '03',
        todoText: 'Watch Batman',
      ),
    ];
  }
}
