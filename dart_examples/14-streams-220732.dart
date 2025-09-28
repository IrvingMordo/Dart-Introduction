void main() {
  emitNotifications().listen(
    (value) {
      print('Notification: $value');
    },
    onDone: () => print('End of notifications'),
  );
}

Stream<String> emitNotifications() {
  final messages = [
    'New project added: Task App',
    'Portfolio updated',
    'A recruiter viewed your profile'
  ];

  return Stream.periodic(const Duration(seconds: 1), (index) {
    return messages[index];
  }).take(messages.length);
}
