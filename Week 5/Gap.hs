{-
Gap
Homework category 1 (Hw_cat_1)

This task is suitable for a recursive solution.

We say that character pair (c1,c2) appears in string s with gap g, if c1 appears before c2 in s with exactly g characters between them.

Write a function gap :: (Char, Char) -> Integer -> String -> Integer that, given a pair (c1,c2), a gap g and a string s returns an integer telling how many times (c1,c2) appear in s with gap g.

For example: gap ('a','b') 1 "aaabbb" produces 2.

Since the exercise is meant to be solved with recursion, using Haskell’s “loop-like” functions is not allowed in the grader. The function must not use map, filter, takeWhile, or any of the various fold-functions (they will be hidden in the Plussa’s autograder, so you’ll get a compiler error while submitting if you try to use them).

Another note: for technical reasons, line numbers in Plussa’s compilation error messages are off more than the usual 2 lines. Sorry about that!
-}

gap :: (Char, Char) -> Integer -> String -> Integer
gap _ _ [] = 0
gap (c1, c2) g s@(_:xs)
    | g < 0 = 0
    | length s < fromIntegral g + 2 = 0
    | head s == c1 && s !! fromIntegral (g + 1) == c2
        = 1 + gap (c1, c2) g xs
    | otherwise
        = gap (c1, c2) g xs


