import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:bloc_todo/bloc/todo_state.dart';
import 'package:bloc_todo/model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodosBloc extends Bloc<TodosEvent, TodosState> {
  TodosBloc() : super(TodosInitial()) {
    on<FetchTodos>(_fetchTodos);
  }

  Future<void> _fetchTodos(FetchTodos event, Emitter<TodosState> emit) async {
    emit(TodosLoading());
    try {
      final todos = await _fetchTodosFromApi();
      emit(TodosLoaded(todos: todos));
    } catch (_) {
      emit(TodosError());
    }
  }

  Future<List<Todo>> _fetchTodosFromApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/todos'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonTodos = json.decode(response.body);
      return jsonTodos.map((json) => Todo.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load todos');
    }
  }
}
