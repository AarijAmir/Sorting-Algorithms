class MergeSort {
  void mergeSort(List<int> arr) {
    // List<int> arr = [38, 27, 43, 3, 9, 82, 10];

    if (arr.length <= 1) {
      return; // Already sorted
    }

    // Split the array into two halves
    int mid = arr.length ~/ 2;
    List<int> left = arr.sublist(0, mid);
    List<int> right = arr.sublist(mid);

    // Recursively sort each half
    mergeSort(left);
    mergeSort(right);

    // Merge the sorted halves back together
    merge(arr, left, right);
  }

  void merge(List<int> arr, List<int> left, List<int> right) {
    int i = 0, j = 0, k = 0;

    while (i < left.length && j < right.length) {
      if (left[i] < right[j]) {
        arr[k++] = left[i++];
      } else {
        arr[k++] = right[j++];
      }
    }

    // Copy the remaining elements of left and right, if any
    while (i < left.length) {
      arr[k++] = left[i++];
    }

    while (j < right.length) {
      arr[k++] = right[j++];
    }
  }
}
