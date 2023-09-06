import 'package:flutter/material.dart';
import '../Models/ToDoModel.dart';

class ToDoProvider extends ChangeNotifier {
  final List<ToDoModel> _todoList = [
    ToDoModel(title: "Task 1"),
    ToDoModel(title: "Task 2"),
    ToDoModel(title: "Task 3"),
    ToDoModel(title: "Task 4"),
    ToDoModel(title: "Task 5"),
  ];
  void addToDo(ToDoModel todo) {
    _todoList.add(todo);
    notifyListeners();
  }
  List<ToDoModel> get todoList => _todoList;

  void deleteToDo(int index) {
    _todoList.removeAt(index);
    notifyListeners();
  }

  void updateToDo(int index, ToDoModel note) {
    _todoList[index] = note;
    notifyListeners();
  }
  List<ToDoModel> searchToDo(String query) {
    List<ToDoModel> _searchToDo = _todoList
        .where((element) =>
            element.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return _searchToDo;
  }



  
}