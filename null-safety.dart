// https://dart.dev/null-safety/understanding-null-safety

void nullableVariable() {
  // Tambahkan ? setelah tipe data 

  String? a;
  int? b;

  a = null;
  b = null;

  print('string: $a, int: $b');

  a = 'Hello';
  b = 2;

  print('string: $a, int: $b');
}

void cherryPicking(String? first, String? second, String? third) {
  // Menggunakan ?? untuk memilih non null pertama

  final String? nonNullPertama = first ?? second ?? third;

  print(nonNullPertama);
}

void nullAwareAssignment(String? first, String? second, String? third) {
  // Menggunakan ??=
  
  String? a = first; // a = null
  a ??= second;
  a ??= third;
  
  print(a);
  
  String? b = second; // b = 'kedua'
  b ??= first;
  b ??= third;
  
  print(b);
}

void conditionalInvocation(List<String>? listA, List<String>? listB) {
  // menggunakan ?. ; apabila null maka fungsi tidak dieksekusi
  // ERROR: final panjangList = listA.length;
  
  final panjangListA = listA?.length;
  final panjangListB = listB?.length;
  
  print('panjang listA: $panjangListA');
  print('panjang listB: $panjangListB');
  
  listA?.add('a');
  listB?.add('d');
  
  print('listA: $listA');
  print('listB: $listB');
}

void main() {
//   nullableVariable();
//   cherryPicking(null, 'kedua', 'ketiga');
//   nullAwareAssignment(null, 'kedua', 'ketiga');
  conditionalInvocation(null, ['a', 'b', 'c']);

}
