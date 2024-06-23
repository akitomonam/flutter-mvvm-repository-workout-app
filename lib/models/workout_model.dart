class Workout {
  final String menu;
  final int weight;
  final int reps;
  // finalは変更不可の意味　コンストラクタで初期化された後に変更されることを防ぐ
  Workout({
    required this.menu,
    required this.weight,
    required this.reps,
  });
}
