class InsertionSort {
  void insertionSort(List<int> list) {
    for (var i = 1; i < list.length; i++) {
      int temp = list[i];
      int j = i - 1;
      while (j >= 0 && temp < list[j]) {
        list[j + 1] = list[j];
        j--;
      }
      list[j + 1] = temp;
    }
  }

  // void insertionSort({required List<int> list}) {
  //   for (var i = 1; i < list.length; i++) {
  //     int temp = list[i];
  //     int j = i;
  //     while (j > 0 && list[j - 1] > temp) {
  //       list[j] = list[j - 1];
  //       j--;
  //     }
  //     list[j] = temp;
  //   }
  // }

  void printArray({required List<int> list}) {
    for (var i = 0; i < list.length; i++) {
      print('Index : $i, ${list[i]}');
    }
  }
}

abstract class Student {
  void foo(){}
  void soo();
}
class CSStudent implements Student{
  @override
  void soo() {
    // TODO: implement soo
  }
  
  @override
  void foo() {
    // TODO: implement foo
  }

}

