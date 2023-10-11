class SelectionSort {
  void selectionSort({required List<int> arr}) {
    for (var j = 0; j < arr.length; j++) {
      int minimumIndex = j;
      for (var i = j + 1; i < arr.length; i++) {
        if (arr[i] < arr[minimumIndex]) {
          minimumIndex = i;
        }
      }
      if (minimumIndex != j) {
        int temp = arr[j];
        arr[j] = arr[minimumIndex];
        arr[minimumIndex] = temp;
      }
    }
  }

  void displayArray({required List<int> arr}) {
    for (var i = 0; i < arr.length; i++) {
      print('Index = $i, ${arr[i]}');
    }
  }
}
