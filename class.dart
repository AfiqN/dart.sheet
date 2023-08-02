// Normal class
class A {
  void a() {
    print('This is a');
  }

  void b() {
    print('This is b');
  }

  void c() {
    print('This is c');
  }
}

// With constructor
class B {
  final String bB;
  final int cB;

  B(this.bB, this.cB);
  
  void a() {
    print('anything');
    print(bB);
  }
  
  void b() {
    var dB = cB + 2;
    print(dB);
  }
}

// Extended class
class C extends A {
  void d() {
    print('This is d form class C');
  }
}

// Abstract Class
abstract class D {
  void a() {
    print('abstract class D');
  }
}

class E extends D {
  void b() {
    print('extend from abstranct class D');
  }
}

// Factory constructor
class F {
  final String a, b;
  F(this.a, this.b);
  
  factory F.factoryCons() {
    return F('default constructor a', 'default constructor b');
  }
}

// Custom Operators
class G {
  final String a;
  final int b;
  G(this.a, this.b);
  
  @override
  bool operator ==(covariant G other) => other.a == a  && other.b == b;
  
  @override
  int get hashCode => a.hashCode + b.hashCode; 
}


void main() {
  final classA1 = A();

  classA1.a();
  classA1.b();
  classA1.c();
  
  final classB1 = B('constructor of B', 2);
  classB1.a();
  classB1.b();
  
  final classC1 = C();
  classC1.a();
  classC1.d();
  
//   final classD1 = D(); <-- ERROR: abstract class can't be instantiated
   
  final classE1 = E();
  classE1.a();
  classE1.b();  
  
  final classF1 = F('constructor a of F', 'constructor b of F');
  final classF2 = F.factoryCons();
  print(classF1.a);
  print(classF1.b);
  print(classF2.a);
  print(classF2.b);
  
//   purpose of custom operators
  final classB21 = B('a', 1);
  final classB22 = B('a', 1);
  print(classB21 == classB22);
  
  final classG1 = G('a', 1);
  final classG2 = G('a', 1);
  print(classG1 == classG2); 
}
