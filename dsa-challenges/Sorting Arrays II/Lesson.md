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

## 3. Quick Sort

**Quick Sort** is an efficient, comparison-based sorting algorithm that uses a divide-and-conquer strategy to sort an array. It is one of the most popular sorting algorithms due to its average-case time complexity of O(n log n) and practical performance on large datasets. Quick Sort works by selecting a "pivot" element and partitioning the array into two subarrays based on this pivot.

### How It Works:
1. **Choose a Pivot:** A pivot element is selected from the array. This can be any element, but common choices include the first element, the last element, or a randomly selected element.
2. **Partition the Array:** Rearrange the elements such that elements smaller than the pivot are on the left and elements larger than the pivot are on the right.
3. **Recursively Sort:** Recursively apply Quick Sort to the left and right subarrays.
4. **Combine:** The array is sorted once all recursive calls are completed.

### Pseudo Code in Python
```python
def quick_sort(arr):
    # Base case: If the array has 1 or 0 elements, it is already sorted
    if len(arr) <= 1:
        return arr
    
    # Choose the pivot (using the last element here)
    pivot = arr[-1]
    
    # Partition the array into three lists
    left = [x for x in arr[:-1] if x <= pivot]  # Elements less than or equal to pivot
    right = [x for x in arr[:-1] if x > pivot]  # Elements greater than pivot
    
    # Recursively sort the left and right sub-arrays and combine with pivot
    return quick_sort(left) + [pivot] + quick_sort(right)
```

### Time and Space Complexity of Quick Sort
- **Best Case Time Complexity**: O(n log n) – This occurs when the pivot divides the array into two equal halves at each step.
- **Average Case Time Complexity**: O(n log n) – On average, the algorithm performs well with most types of input data.
- **Worst Case Time Complexity**: O(n²) – The worst-case occurs when the smallest or largest element is always chosen as the pivot, leading to unbalanced partitions (e.g., sorted or reverse-sorted arrays).
- **Space Complexity**: O(log n) – This is due to the recursion stack space needed for balanced partitions.
- **Stability**: Not stable – Equal elements may not retain their original relative order.
- **In-Place**: Yes – It doesn't require extra space proportional to the input size.

## 4. Cyclic Sort

Cyclic Sort is an efficient sorting algorithm designed for arrays where the elements are in a specific range from 1 to n. The algorithm works by placing each element in its correct position in a single pass through the array.

### How It Works
1. Traverse the array from the beginning.
2. For each element, if it is not in the correct position (i.e., the element `arr[i]` is not equal to `i + 1`), swap it with the element at its correct position (`arr[arr[i] - 1]`).
3. Repeat this process until all elements are in their correct positions.

### Pseudo Code in Python
```python
def cyclic_sort(arr):
    i = 0
    while i < len(arr):
        correct_idx = arr[i] - 1
        if arr[i] != arr[correct_idx]:
            # Swap the elements
            arr[i], arr[correct_idx] = arr[correct_idx], arr[i]
        else:
            i += 1
    return arr
```

### Time and Space Complexity of Cyclic Sort
- **Best Case Time Complexity**: O(n) – The algorithm traverses the array once, placing all elements in their correct positions with minimal swaps.
- **Average Case Time Complexity**: O(n) – In the average case, each element is moved to its correct position in a linear number of operations.
- **Worst Case Time Complexity**: O(n) – Even in the worst case, each element is swapped at most once, making the total number of operations linear with respect to the input size.
- **Space Complexity**: O(1) – Cyclic Sort sorts the array in place, so it requires a constant amount of extra memory.
- **Stability**: Not stable – The algorithm may alter the relative order of equal elements during sorting.
- **In-Place**: Yes – Sorting is performed without using extra space proportional to the input size.

## 5. Conclusion

Advanced sorting algorithms like **Merge Sort**, **Bucket Sort**, **Quick Sort**, and **Cyclic Sort** play a crucial role in optimizing performance across different scenarios. Each algorithm has unique strengths, making them suitable for specific data distributions and requirements:

- **Merge Sort** excels in handling large datasets with consistent time complexity, providing stability and guaranteeing a predictable O(n log n) performance.
- **Bucket Sort** leverages the uniform distribution of elements to achieve linear time complexity, making it efficient for sorting floating-point numbers or datasets with a known range.
- **Quick Sort** is favored for its in-place sorting and average-case efficiency, although it requires careful choice of pivot to avoid worst-case scenarios.
- **Cyclic Sort** shines in scenarios where elements are in a limited range and need to be placed in a specific order with minimal swaps.