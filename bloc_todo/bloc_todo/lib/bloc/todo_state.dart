import 'package:bloc_todo/model.dart';

abstract class TodosEvent {}

class FetchTodos extends TodosEvent {}

abstract class TodosState {}

class TodosInitial extends TodosState {}

class TodosLoading extends TodosState {}

class TodosLoaded extends TodosState {
  final List<Todo> todos;

  TodosLoaded({required this.todos});
}

class TodosError extends TodosState {}
