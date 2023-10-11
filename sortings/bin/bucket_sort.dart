import 'dart:math' as math;

class BucketSort {
  List<int> arr;
  BucketSort({required List<int> list}) : arr = list;

  void displayArray() {
    for (var i = 0; i < arr.length; i++) {
      print('Index = $i, ${arr[i]}');
    }
  }

  // Helper Method for Printing Buckets onto the Console. Not Compulsory
  // You need to take into account in Bucket Sort, you don't need to
  // create print() over there, this is not compulsory
  void printBucket({required List<List<int>> buckets}) {
    for (var i = 0; i < buckets.length; i++) {
      print('Bucket# $i =');
      for (var j = 0; j < buckets[i].length; j++) {
        print(buckets[i][j]);
      }
    }
  }

  // BucketSorting
  void bucketSort() {
    int numberOfBuckets = math.sqrt(arr.length).ceil();
    int maxValue = arr[0];
    for (int element in arr) {
      if (element > maxValue) {
        maxValue = element;
      }
    }
    List<List<int>> buckets = [
      for (int i = 0; i < numberOfBuckets; i++) <int>[]
    ];
    for (int value in arr) {
      int bucketNumber =
          ((value.toDouble() * numberOfBuckets) / maxValue.toDouble()).ceil();
      print('Bucket Number = $bucketNumber and Value = $value');
      buckets[bucketNumber - 1].add(value);
      print(buckets);
    }
    print('\n\n ----Printing Buckets Before Sorting----');
    printBucket(buckets: buckets);
    for (List<int> bucket in buckets) {
      bucket.sort();
    }
    print('\n\n ----Printing Buckets After Sorting----');
    printBucket(buckets: buckets);
    int index = 0;
    for (List<int> bucket in buckets) {
      for (int value in bucket) {
        arr[index] = value;
        index++;
      }
    }
  }
}
