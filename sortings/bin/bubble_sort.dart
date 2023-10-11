class BubbleSort {
  void bubbleSort({required List<int> arr}) {
    for (var i = 0; i < arr.length - 1; i++) {
      for (var j = 0; j < arr.length - i - 1; j++) {
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
      }
    }
  }

  void displayArray({required List<int> arr}) {
    for (var i = 0; i < arr.length; i++) {
      print('Index = $i, ${arr[i]}');
    }
  }
}
