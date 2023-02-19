void main() {
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

// async* retorna stream de manera asyncrona
Stream<int> emitNumbers() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  for (int i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));

    yield i; // retornamos i cada 1 segundo
  }
}
