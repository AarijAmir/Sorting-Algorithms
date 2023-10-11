class ShellSort {
  static void shellSort(List<int> arr) {
    int n = arr.length;
    for (int gap = n ~/ 2; gap >= 1; gap = gap ~/ 2) {
      for (int j = gap; j < n; j++) {
        int temp = arr[j];
        int i = j;
        while (i >= gap && arr[i - gap] > temp) {
          print('Before i =$i');
          arr[i] = arr[i - gap];
          print('After i =$i');

          i -= gap;
        }
        arr[i] = temp;
      }
    }
    print(arr);
  }

  static void displayArray({required List<int> arr}) {
    for (var i = 0; i < arr.length; i++) {
      print('Index = $i, ${arr[i]}');
    }
  }
}
