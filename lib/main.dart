import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodel/workout_viewmodel.dart';
import 'view/workout_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WorkoutViewmodel(),
      child: MaterialApp(
        title: 'Workout App',
        theme: ThemeData(primarySwatch: Colors.grey),
        home: const WorkoutView(),
      ),
    );
  }
}
