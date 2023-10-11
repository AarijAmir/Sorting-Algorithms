import 'data_structures/binary_heap.dart';

class HeapSort {
  final List<int> arr;
  HeapSort(this.arr);
  void sort() {
    BinaryHeap binaryHeap = BinaryHeap(arr.length);
    for (var i = 0; i < arr.length; i++) {
      binaryHeap.insert(arr[i], HeapType.min);
    }
    for (var i = 0; i < arr.length; i++) {
      arr[i] = binaryHeap.extractHeadOfBinaryHeap(HeapType.min)!;
    }
  }

  void printArray() {
    for (var i = 0; i < arr.length; i++) {
      print(arr[i]);
    }
  }
}
