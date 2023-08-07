class A {
  final String a;
  A(this.a);
  
  void funcA1() {
    print('printed funcA1');
  }
}

// Extensions
extension ExtA on A {
  String get varExtA => 'variable $a from extenison';
  
  void extAfunc() {
    print('printed $a from extension');  
  }
} 

// Future & async await
Future<int> futureMultiplication(int a, int b) {
  return Future.delayed(const Duration(seconds: 3), () {
    return a * b;
  });
}

// call future & async await
void runAsyncAwait(int a, int b) async {
  final result = await futureMultiplication(a, b);
  print(result);
}

// Stream
Stream<String> getName() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return 'My name';
  });
}

// call stream 
void runStream() async {
  await for (final value in getName()) {
    print(value);
  }
  print('Stream finished working');
}

// Generator
Iterable<int> getOneTwoThree() sync* { 
  yield 1;
  yield 2;
  yield 3;
}

// Generic
class Pair<A, B> {
  final A value1;
  final B value2;
  Pair(this.value1, this.value2);
}

void main() {
  final classA1 = A('cons1');
  classA1.extAfunc();
  print(classA1.varExtA);
  
  // printed after 3 seconds of delay
  runAsyncAwait(3, 5);
  
  // stream continuously print 'My name' every 1 second
  // runStream();
  
  // call generator
  for (final value in getOneTwoThree()) {
    print(value);
  }
}
