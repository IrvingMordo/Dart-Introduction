void main() {
  print('--- ORIGINAL EXAMPLE ---');
  emitNumber().listen(
    (int value) {
      print('Stream value: $value');
    },
    onDone: () => print('End of number stream'),
  );

  print('--- PERSONAL EXAMPLE ---');
  emitAchievements().listen(
    (achievement) {
      print('🏋️ Achievement: $achievement');
    },
    onDone: () => print('End of achievement stream'),
  );
}


Stream<int> emitNumber() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}


// Personal: Stream that emits gym achievements
Stream<String> emitAchievements() async* {
  final achievements = [
    'You completed 10 bench press repetitions',
    'You increased weight on squats',
    'You improved your cardio endurance',
    'New personal record in deadlift',
    'You finished the full workout routine'
  ];

  for (String achievement in achievements) {
    await Future.delayed(const Duration(seconds: 1));
    yield achievement;
  }
}
