import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/workout_viewmodel.dart';

class WorkoutView extends StatelessWidget {
  const WorkoutView({super.key});

  @override
  Widget build(BuildContext context) {
    var viewModel = Provider.of<WorkoutViewmodel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Workout App'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        itemCount: viewModel.workouts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(viewModel.workouts[index].menu),
            subtitle: Text(
                'Weight: ${viewModel.workouts[index].weight}kg, Reps: ${viewModel.workouts[index].reps}'),
          );
        },
      ),
    );
  }
}
