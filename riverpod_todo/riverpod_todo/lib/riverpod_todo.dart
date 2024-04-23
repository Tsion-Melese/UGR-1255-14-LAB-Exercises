import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_todo/model.dart';

import 'package:http/http.dart' as http;

class TodoPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpods Todos'),
      ),
      backgroundColor: Colors.grey[900],
      body: todos.isEmpty
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                final todo = todos[index];
                return ListTile(
                  title: Text(
                    todo.title,
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'By user id: ${todo.userId}',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Checkbox(
                    value: todo.completed,
                    onChanged: (value) {
                      ref
                          .read(todoProvider.notifier)
                          .toggleTodoCompletion(index);
                    },
                    activeColor: Colors.green[900],
                  ),
                );
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

// StateNotifier for managing todos state
class TodoNotifier extends StateNotifier<List<Todo>> {
  TodoNotifier() : super([]);

  Future<void> fetchTodos() async {
    try {
      final newTodos = await ApiService.fetchTodos();
      state = newTodos;
    } catch (e) {
      print('Error fetching todos: $e');
    }
  }

  void toggleTodoCompletion(int index) {
    state[index].completed = !state[index].completed;
    state = List.from(state); // Trigger state change
  }
}

// Provider for managing the todos state
final todoProvider = StateNotifierProvider<TodoNotifier, List<Todo>>((ref) {
  final todoNotifier = TodoNotifier();
  ref.onDispose(
      todoNotifier.dispose); // Dispose the notifier when no longer used
  todoNotifier.fetchTodos(); // Fetch todos when the provider is created
  return todoNotifier;
});
