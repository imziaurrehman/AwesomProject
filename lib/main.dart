void main() {
  List abc = [1, 2, 3, 4, 9];
  List cdf = [6, 7, 8, 5, 10];
  List evenVal = [];
  List oddVal = [];
  List evenAndOdd = [];
  final List myListWithOutDuplication = [...abc, ...cdf].toSet().toList();
  myListWithOutDuplication.sort();
  print('free dupliction');
  print(myListWithOutDuplication);
  for (int i = 1; i < myListWithOutDuplication.length; i++) {
    if (i.isEven) {
      evenVal.add(i);
    } else {
      oddVal.add(i);
    }
  }
  evenAndOdd.add('Even');
  evenAndOdd.addAll(evenVal);
  evenAndOdd.add('Odd');
  evenAndOdd.addAll(oddVal);
  print('even');
  print(evenVal);
  print('odd');
  print(oddVal);
  print('evenAndOdd');
  print(evenAndOdd);
}
