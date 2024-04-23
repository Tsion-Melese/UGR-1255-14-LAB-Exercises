import 'package:bloc_todo/bloc/todo_bloc.dart';
import 'package:bloc_todo/bloc/todo_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todos Exercise',
      home: BlocProvider(
        create: (context) => TodosBloc()..add(FetchTodos()),
        child: const TodosPage(),
      ),
    );
  }
}

class TodosPage extends StatelessWidget {
  const TodosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Todos'),
      ),
      backgroundColor:
          Colors.grey[900], // Setting background color to grey[900]
      body: BlocBuilder<TodosBloc, TodosState>(
        builder: (context, state) {
          if (state is TodosLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is TodosLoaded) {
            return ListView.builder(
              itemCount: state.todos.length,
              itemBuilder: (context, index) {
                final todo = state.todos[index];
                return ListTile(
                  title: Text(
                    todo.title,
                    style:
                        TextStyle(color: Colors.white), // Text color to white
                  ),
                  subtitle: Text(
                    'User ID: ${todo.userId}',
                    style:
                        TextStyle(color: Colors.white), // Text color to white
                  ),
                  trailing: Checkbox(
                    value: todo.completed,
                    onChanged:
                        null, // Set onChanged to null to disable checkbox
                    activeColor: Colors.greenAccent[900],
                  ),
                );
              },
            );
          } else if (state is TodosError) {
            return const Center(
                child: Text('Failed to load todos',
                    style:
                        TextStyle(color: Colors.white))); // Text color to white
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
