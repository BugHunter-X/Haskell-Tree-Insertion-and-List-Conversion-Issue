## Haskell Tree Insertion and List Conversion Issue

This repository demonstrates an issue encountered when inserting a single element into a custom binary tree data type in Haskell and then converting it to a sorted list. The expected output is `[3]`, but the actual output is an empty list `[]`.

### Bug Reproduction

The bug can be reproduced by running the `bug.hs` file.  It defines a `Tree` data type, an `insert` function to insert elements while maintaining order, and a `toList` function for in-order traversal. When inserting the value 3 into an initially empty tree, the resulting list should contain only `3`. Instead, it produces an empty list.

### Solution

The corrected code is provided in the `bugSolution.hs` file. The solution addresses the issue by correcting the implementation of the `insert` function.

### Steps to Run

1. Save the contents of `bug.hs` and `bugSolution.hs` into respective files.
2. Compile and run `bug.hs` to reproduce the bug: `ghc bug.hs && ./bug`
3. Compile and run `bugSolution.hs` to observe the correct behavior: `ghc bugSolution.hs && ./bugSolution`