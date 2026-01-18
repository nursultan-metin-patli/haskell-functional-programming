{-
Average Result
Homework category 1 (Hw_cat_1)

Now we’ll practise functions-as-first-class-citizens a little more.

Write a function averageResult :: [ Integer -> Integer ] -> ([Integer] -> Integer) that is given a list of functions taking and returning an Integer. It should return a function that accepts a list of integers. This function should then run each integer through the corresponding function originally given to averageResult (first integer through the first function, second through the second, and so on). It should then return the average of the integers returned by the functions (use div for division when calculating the average, so that the result is truncated to an integer).

For example, if f1, f2, and f3 are functions of type Integer -> Integer, then for func = averageResult [ f1, f2, f3 ] the returned function should be such that func [ 1, 2, 3 ] behaves as ((f1 p1) + (f2 p2) + (f3 p3)) `div` 3. So (averageResult [abs, negate]) [13, 7] should return 3.

If averageResult is given an empty list, it should raise an error “At least one function required”. And if the list of integers given to the returned function has a different length than the list of functions given to averageResult, the function returned by averageResult should raise an error “Lists have different lengths”.

Note: Again, sinced the length function gives the length of a list as an Int (not Integer), you’ll probably have to use the fromIntegral function to convert the Int into an Integer.
-}

--averageResult :: [ Integer -> Integer ] -> ([Integer] -> Integer)

averageResult [] = error "At least one function required"
averageResult f = \xs ->
    if length f /= length xs
    then error "Lists have different lengths"
    else
        let results = zipWith ($) f xs
        in (sum results) `div` (fromIntegral (length results))


