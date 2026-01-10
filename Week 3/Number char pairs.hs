{-
Number char pairs
Homework category 1 (Hw_cat_1)

Let us number the smaller case characters from ‘a’ to ‘z’ with numbers starting from 1, that is, ‘a’ is given 1, ‘b’ is given number 2, etc.

Write two functions:

A function charsDivisibleBy :: Integer -> [Char] that, given a number n, returns all the characters that have a number divisible by n.

A function charsProductOf :: [Integer] -> [Char] that, given a list of numbers ns, returns all the characters that have a number that is a product of any two numbers in ns. You may assume that each number only appears in the list once.

As an example, charsDivisibleBy 2 = “bdfhjlnprtvxz” and charsProductOf [2,3,4] = “fhl”.

The grader sorts the output of your function so the order is unimportant.

Hint: Using list comprehensions seems like a relatively easy way to solve this. Remember, your solution doesn’t have to be “efficient”, just work…

Note: Since you are not allowed to import additional Haskell libraries, you’ll have to handle Integer to Char conversions yourself (Hint: You can write such function easily using range-lists and indexing, recursively using the succ function, and there are many other ways, too.).
-}

convertIntToChar 1 = 'a'
convertIntToChar num = succ (convertIntToChar (num-1))
charsDivisibleBy n = [convertIntToChar(x) |
    x <- [1..26], n /= 0,
    (rem x n) == 0]

charsProductOf lst =
  [ convertIntToChar x
  | x <- [1..26]
  , or [x == a * b | a <- lst, b <- lst, a < b]]
