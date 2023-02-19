void main() {
  emitNumbers().listen((value) {
    print(value);
  });
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(5); //* tomamos solo las 5 primeras emisiones
}
