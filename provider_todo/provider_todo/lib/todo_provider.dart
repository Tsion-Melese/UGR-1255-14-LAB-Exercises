import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_todo/model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TodoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Todos'),
      ),
      backgroundColor: Colors.grey[900],
      body: Consumer<TodoProvider>(
        builder: (context, provider, child) {
          if (provider.todos.isEmpty) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: provider.todos.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          provider.todos[index].title,
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          'By user id: ${provider.todos[index].userId}',
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Checkbox(
                          value: provider.todos[index].completed,
                          onChanged: (value) {
                            provider.toggleTodoCompletion(index);
                          },
                          activeColor: Colors.green[900],
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}

class ApiService {
  static Future<List<Todo>> fetchTodos() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((e) => Todo.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load todos');
    }
  }
}

class TodoProvider extends ChangeNotifier {
  List<Todo> _todos = [];
  List<Todo> get todos => _todos;

  TodoProvider() {
    fetchTodos();
  }

  Future<void> fetchTodos() async {
    try {
      _todos = await ApiService.fetchTodos();
      notifyListeners();
    } catch (e) {
      print('Error fetching todos: $e');
    }
  }

  void toggleTodoCompletion(int index) {
    _todos[index].completed = !_todos[index].completed;
    notifyListeners();
  }
}
