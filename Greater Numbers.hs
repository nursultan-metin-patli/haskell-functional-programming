{-
Greater Numbers
Homework category 1 (Hw_cat_1)

Write a function nextIsGreater :: [Integer] -> [Integer] that, given a list of numbers, produces a list with all elements of the input list such that the element is followed by a greater number in the input list (the next number is greater).

The numbers need to be in the same order relative to each other in the output list as they are in the input list.

An example evaluation of the function:

nextIsGreater [0,5,2,3,2,2,3,1] produces [0,2,2]
-}

nextIsGreater :: [Integer] -> [Integer]
nextIsGreater (x:xs:xss)
    | (x < xs) = x:nextIsGreater (xs:xss)
    | otherwise = nextIsGreater (xs:xss)
nextIsGreater _ = []

