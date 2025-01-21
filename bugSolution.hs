The solution involves removing the `unsafePerformIO` call and making the function truly pure.  Since the function now relies on external input, it needs to be an IO action.

```haskell
import System.IO

myPureFunction :: Int -> IO Int
myPureFunction x = do
  putStrLn "Enter a number:"
  y <- getLine >>= return . read
  return (x + y)
```

By removing the `unsafePerformIO`, we ensure that the function's output depends solely on its input and not on any mutable state outside its scope. This increases code predictability and maintainability.