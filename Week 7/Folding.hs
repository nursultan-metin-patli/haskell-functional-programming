{-
Folding
Homework category 2 (Hw_cat_2)

Important

Note: In this exercise, you must use foldr to solve the problem!

Write a function addpos :: [Integer] -> Integer. It should use foldr to go through the list and count the sum of all positive list elements . So, addpos [1,-1,2,-2,3] should return 6.

In private tests, you’ll get more points if your solution uses foldr in a way that stops after reaching the first zero. If no zero is found, it should of course handle the whole list. (This should also make addpos work for infinite lists).

The function must not use map, filter, or takeWhile (they will be hidden in the Plussa’s autograder, so you’ll get a compiler error while submitting if you try to use them). Also, try not to use recursive functions of your own in solving the problem (just folding).

Another note: for technical reasons, line numbers in Plussa’s compilation error messages are off more than the usual 2 lines. Sorry about that!
-}

addpos :: [Integer] -> Integer

addpos lst = foldr (\x acc -> (if
    (x == 0)
    then 0
    else (if (x>0)
        then x + acc
        else acc)))
    0 lst
