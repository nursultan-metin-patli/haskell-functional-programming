{-
Only digits
Homework category 1 (Hw_cat_1)

This task is here for you to practice basic recursion.

Write a function onlyDigits :: String -> Bool that, given a string, checks whether the string contains only digits or not. Empty string should return false.

Since the exercise is meant to be solved with recursion, using Haskell’s “loop-like” functions is not allowed in the grader. The function must not use map, filter, takeWhile, or any of the various fold-functions (they will be hidden in the Plussa’s autograder, so you’ll get a compiler error while submitting if you try to use them).

Another note: for technical reasons, line numbers in Plussa’s compilation error messages are off more than the usual 2 lines. Sorry about that!
-}

onlyDigits :: String -> Bool
isDigit' :: Char -> Bool

isDigit' c = c >= '0' && c <= '9'
onlyDigits [] = False
onlyDigits [x] = isDigit' x
onlyDigits (s:str) = (isDigit' s) &&
    (onlyDigits str)




