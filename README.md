# Haskell Bug: UnsafePerformIO in Pure Function

This repository demonstrates a common issue in Haskell programming: the misuse of `unsafePerformIO` within a function declared as pure. This practice violates the principle of referential transparency, making the code harder to reason about and potentially causing unexpected behavior.

The `bug.hs` file contains the problematic code, while `bugSolution.hs` offers a corrected version.