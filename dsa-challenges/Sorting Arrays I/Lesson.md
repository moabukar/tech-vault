# 🚀 Sorting Arrays I - Lesson

## 1. Introduction
Sorting allows us to:
- Find the nth greatest or smallest number.
- Group items by quality.
- Find the median and the largest or smallest elements.

There are different sorting algorithms, which can be categorized into:

1. **Sorting by Comparison**
   - Algorithms that sort elements by comparing them.
  
2. **Sorting by Distribution**
   - Algorithms that utilize the distribution of the data to sort.

3. **Stable vs Non-Stable Sorting**
   - **Stable Sorting**: Maintains the relative order of equal elements.
   - **Non-Stable Sorting**: Does not guarantee the order of equal elements.

4. **In-Place vs Out-of-Place Sorting**
   - **In-Place Sorting**: Requires only a small, constant amount of extra space.
   - **Out-of-Place Sorting**: Requires additional space proportional to the size of the input.

## 2. Comparison Sorting
Some examples include: Bubble sort, selection sort and insertion.

### A. Bubble Sort
Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping adjacent elements if they are in the wrong order.

#### Pseudo Code in Python
```python
def bubble_sort(arr):
    n = len(arr)
    
    # Traverse through all array elements
    for i in range(n):
        swapped = False  # Flag to check if a swap happened
        
        # Last i elements are already sorted, no need to check them
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                # Swap if the element is greater than the next element
                arr[j], arr[j+1] = arr[j+1], arr[j]
                swapped = True  # A swap occurred
        
        # If no elements were swapped in the inner loop, break out early
        if not swapped:
            break
    
    return arr
```

#### Time and Space Complexity of Bubble Sort
- **Best Case Time Complexity**: O(n) – This happens when the array is already sorted, and no swaps are needed.
- **Average Case Time Complexity**: O(n²) – This occurs when the elements are in random order.
- **Worst Case Time Complexity**: O(n²) – This happens when the array is sorted in reverse order, meaning every element needs to be swapped.
- **Space Complexity**: O(1) – Bubble sort sorts the array in place, so it only requires a constant amount of extra memory regardless of the input size.
- **Stability**: Stable – Bubble sort does not change the relative order of equal elements.
- **In-Place**: Yes – Since it doesn’t use extra memory to store another copy of the input array.

### B. Selection Sort

Selection Sort is a comparison-based sorting algorithm. It divides the array into two parts: 
- The **sorted part** on the left.
- The **unsorted part** on the right.

Initially, the sorted part is empty, and the unsorted part contains all elements. The algorithm repeatedly selects the smallest (or largest, depending on sorting order) element from the unsorted part and swaps it with the leftmost unsorted element, moving the boundary between the sorted and unsorted parts one element to the right.

#### Pseudo Code in Python
```python
def selection_sort(arr):
    n = len(arr)
    for i in range(n):
        min_idx = i
        for j in range(i+1, n):
            if arr[j] < arr[min_idx]:
                min_idx = j
        arr[i], arr[min_idx] = arr[min_idx], arr[i]
    return arr
```

#### Time and Space Complexity of Selection Sort

- **Best Case Time Complexity**: O(n²) – Selection Sort does not optimize for sorted arrays. It always scans the entire unsorted part of the array to find the minimum element, even if the array is already sorted.
- **Average Case Time Complexity**: O(n²) – Regardless of the initial arrangement of elements, the algorithm will perform the same number of comparisons.
- **Worst Case Time Complexity**: O(n²) – The worst case occurs when the array is in reverse order, but the time complexity remains O(n²) due to the nature of the algorithm, which compares each element with the remaining unsorted part.
- **Space Complexity**: O(1) – Since Selection Sort sorts the array in place, no additional memory is required other than a few variables for index tracking and swapping.

### C. Insertion Sort

**Insertion Sort** is a simple comparison-based sorting algorithm that works similarly to sorting playing cards in your hands. The array is divided into a "sorted" and "unsorted" part, and elements from the unsorted part are picked and placed at the correct position in the sorted part.

#### How It Works:
1. We assume the first element is sorted.
2. Starting from the second element, we pick the element and compare it with the elements in the sorted portion (the left part of the array).
3. If the picked element is smaller than the compared element, it is shifted to the right until the correct position is found.
4. This process is repeated until all elements are sorted.

#### Pseudo Code in Python
```python
def insertion_sort(arr):
    # Traverse from 1 to len(arr)
    for i in range(1, len(arr)):
        key = arr[i]
        j = i - 1
        
        # Move elements of arr[0..i-1], that are greater than key, to one position ahead
        while j >= 0 and arr[j] > key:
            arr[j + 1] = arr[j]
            j -= 1
        
        # Place key at after the element just smaller than it
        arr[j + 1] = key
    
    return arr
```

#### Time and Space Complexity of Insertion Sort

- **Best Case Time Complexity**: O(n) – The best case occurs when the array is already sorted. The algorithm only compares each element once, without any shifts.
- **Average Case Time Complexity**: O(n²) – In the average case, elements are in random order, so multiple shifts will be required for each insertion.
- **Worst Case Time Complexity**: O(n²) – The worst case occurs when the array is sorted in reverse order, requiring the maximum number of comparisons and shifts for each element.
- **Space Complexity**: O(1) – Insertion Sort uses only a constant amount of extra memory (for variables like `key` and index tracking).

## 3. Distribution Sorting

One of the most common distribution sorting algorithms is **Counting Sort**.

### A. Counting Sort

**Counting Sort** is an efficient algorithm when the range of numbers is small compared to the input size. It works by counting the occurrences of each value in the input array and using those counts to place elements in the correct order.

#### Python Code Implementation
```python
def counting_sort(nums):
    # Find the maximum value in the array
    maximum = max(nums)
    
    # Create a count array to store the count of each unique element
    count = [0] * (maximum + 1)
    
    # Store the count of each element in the array
    for num in nums:
        count[num] += 1
    
    # Rebuild the original array using the count array
    target = 0
    for index, value in enumerate(count):
        for _ in range(value):
            nums[target] = index
            target += 1
    
    return nums
```

#### Time and Space Complexity

- **Best, Average, and Worst Case Time Complexity**: O(n + k) – Where `n` is the number of elements in the input array and `k` is the range (maximum value in the array).
- **Space Complexity**: O(n + k) – We use additional space for the count array and to store the sorted result.

## 4. Conclusion

Understanding various sorting algorithms provides a strong foundation for solving diverse data manipulation challenges. Sorting not only helps us organize data efficiently but also serves as a building block for other algorithms and applications, such as searching, data analysis, and optimization. In this lesson, we covered different approaches:

1. **Comparison Sorting**: Algorithms like **Bubble Sort**, **Selection Sort**, and **Insertion Sort** provide intuitive ways to sort data through element comparisons. Although their time complexity is typically O(n²), they can be useful for small datasets or when a simple implementation is preferred.

2. **Distribution Sorting**: Algorithms such as **Counting Sort** excel when the range of input data is limited. By leveraging the distribution of values, they achieve linear time complexity, making them ideal for sorting large datasets with a known value range.

3. **Stable vs Non-Stable Sorting**: Sorting stability can be crucial when maintaining the relative order of equal elements is important, such as in applications like radix sort or sorting linked lists.

4. **In-Place vs Out-of-Place Sorting**: Depending on memory constraints, choosing an in-place algorithm like insertion sort, which requires minimal extra space, can be beneficial.