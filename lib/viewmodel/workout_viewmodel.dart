import 'package:flutter/material.dart';
import '../models/workout_model.dart';
import '../repository/workout_repository.dart';

class WorkoutViewmodel extends ChangeNotifier {
  final TodoRepository _repository = TodoRepository(); // _はプライベート変数を示す
  late List<Workout> workouts; // lateは後で初期化される変数を示す

  WorkoutViewmodel() {
    workouts = _repository.fetchTodos();
  }
}
