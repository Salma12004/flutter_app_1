import 'package:flutter/material.dart';
import '../Models/ToDoModel.dart';
import '../Providers/ToDoProvider.dart';
import 'package:provider/provider.dart';

class SearchToDoDelegate extends SearchDelegate {
  Widget buildSearchBar(BuildContext context) {
    return TextField(
        onChanged: (value) {
          query = value;
        },
        decoration: const InputDecoration(
          hintText: "Search",
          border: OutlineInputBorder(),
        ));
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<ToDoModel> _notes =
        Provider.of<ToDoProvider>(context).searchToDo(query);
    return ListView.builder(
      itemCount: _notes.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(_notes[index].title),
          
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<ToDoModel> _notes =
        Provider.of<ToDoProvider>(context).searchToDo(query);
    return ListView.builder(
      itemCount: _notes.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(_notes[index].title),
        );
      },
    );
  }
}
