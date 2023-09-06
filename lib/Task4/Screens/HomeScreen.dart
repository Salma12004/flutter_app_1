import 'package:flutter/material.dart';
import '../Models/ToDoModel.dart';
import '../Providers/ToDoProvider.dart';
import 'package:provider/provider.dart';
import '../Widgets/SearchToDo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String title = "";
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text("Add ToDo"),
              content: TextField(onChanged: (value) {
                title = value;
              }),
              actions: [
                ElevatedButton(
                  onPressed: () {
                    Provider.of<ToDoProvider>(context, listen: false)
                        .addToDo(
                      ToDoModel(
                        title: title,
                      ),
                    );
                    Navigator.pop(context);
                  },
                  child: const Text("Add")
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Cancel")
                )
              ],
            )
          );
        },
        child: const Icon(Icons.add),
      ),
      appBar: AppBar(
        title: const Text("TODO"),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: SearchToDoDelegate());
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: Consumer<ToDoProvider>(
        builder: (context, provider, child) {
          return ListView.builder(
            itemCount: provider.todoList.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: ValueKey(provider.todoList[index]),
                onDismissed: (direction) {
                  provider.deleteToDo(index);
                },
                child: ListTile(
                  leading: Checkbox(
                    value: provider.todoList[index].isDone,
                    onChanged: (value) {
                      provider.updateToDo(
                        index,
                        ToDoModel(
                          title: provider.todoList[index].title,
                          isDone: value!,
                        ),
                      );
                    },
                  ),
                  title: Text(provider.todoList[index].title),
                  onTap: () {
                    String title = provider.todoList[index].title;
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text("Edit TODO"),
                        content: TextField(
                          onChanged: (value) {
                            title = value;
                          },
                          controller: TextEditingController(text: title),
                        ),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                provider.updateToDo(
                                  index,
                                  ToDoModel(
                                    title: title,
                                  ),
                                );
                                Navigator.pop(context);
                              },
                              child: const Text("Edit")),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("Cancel")
                          ),
                        ],
                      )
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}