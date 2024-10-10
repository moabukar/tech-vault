# 🚀 Sorting Arrays II - Lesson

## 1. Introduction
Advanced sorting algorithms are essential for efficiently handling larger datasets and specific types of data distributions. In this lesson, we will explore four advanced sorting algorithms: **Merge Sort**, **Bucket Sort**, **Quick Sort** and **Cyclic Sort**.

## 2. Merge Sort

**Merge Sort** is a divide-and-conquer sorting algorithm that works by dividing an array into smaller subarrays, sorting each subarray, and then merging the sorted subarrays back together to form the final sorted array.

### How It Works:
1. If the array has one or zero elements, it is already sorted. 
2. Divide the array into two halves.
3. Recursively apply merge sort to each half.
4. Merge the two sorted halves back into a single sorted array.

### Pseudo Code in Python
```python
def merge_sort(arr):
    if len(arr) <= 1:
        return arr
    
    mid = len(arr) // 2
    left_half = merge_sort(arr[:mid])
    right_half = merge_sort(arr[mid:])
    
    return merge(left_half, right_half)

def merge(left, right):
    sorted_array = []
    i = j = 0
    
    # Merge the two halves
    while i < len(left) and j < len(right):
        if left[i] < right[j]:
            sorted_array.append(left[i])
            i += 1
        else:
            sorted_array.append(right[j])
            j += 1
    
    # Append remaining elements
    sorted_array.extend(left[i:])
    sorted_array.extend(right[j:])
    
    return sorted_array
```

### Time and Space Complexity of Merge Sort
- **Best Case Time Complexity**: O(n log n) – This occurs in all cases because the array is always divided in half.
- **Average Case Time Complexity**: O(n log n) – The same reasoning as the best case.
- **Worst Case Time Complexity**: O(n log n) – The merging process always requires linear time regardless of the arrangement of elements.
- **Space Complexity**: O(n) – Merge sort requires additional space for the temporary arrays used during the merge process.

## 3. Bucket Sort

**Bucket Sort** is a distribution-based sorting algorithm that works by distributing the elements of an array into a number of buckets. Each bucket is then sorted individually, either using another sorting algorithm or recursively applying bucket sort.

### How It Works:
1. Create an empty array of buckets.
2. Distribute the input elements into buckets based on a specific range.
3. Sort each bucket individually (using another sorting algorithm or recursively).
4. Concatenate the sorted buckets to produce the final sorted array.

### Pseudo Code in Python
```python
def bucket_sort(arr):
    # Create empty buckets
    num_buckets = 10
    buckets = [[] for _ in range(num_buckets)]
    
    # Place elements into buckets
    for num in arr:
        index = int(num * num_buckets)  # Assuming numbers are in [0, 1)
        buckets[min(index, num_buckets - 1)].append(num)

    # Sort each bucket and concatenate
    sorted_array = []
    for bucket in buckets:
        sorted_array.extend(sorted(bucket))  # Using built-in sort for simplicity
    
    return sorted_array
```

### Time and Space Complexity of Bucket Sort
- **Best Case Time Complexity**: O(n + k) – When the elements are uniformly distributed, and each bucket has a small number of elements (where `k` is the number of buckets).
- **Average Case Time Complexity**: O(n + k) – The same reasoning as the best case.
- **Worst Case Time Complexity**: O(n²) – This can occur when all elements are placed into a single bucket (e.g., all elements are the same), leading to a call to a quadratic sorting algorithm within that bucket.
- **Space Complexity**: O(n + k) – Additional space is required for the buckets.