{-
Not folding
Homework category 2 (Hw_cat_2)

Important

Note: In this exercise, you must not use any of the fold functions to solve the problem!

Again, write a function addpos :: [Integer] -> Integer. It should go through the list and count the sum of all positive list elements . So, addpos [1,-1,2,-2,3] should return 6.

The function must not use any of the fold functions (they will be hidden in the Plussa’s autograder, so you’ll get a compiler error while submitting if you try to use them). Also, try to solve the problem using other functions you already know (maps, filters, etc.), try not to resort to recursion either!

This time, the solution should stop after reaching the first zero (this is tested already in public tests). If no zero is found, it should of course handle the whole list. (This should also make addpos work for infinite lists).

Another note: for technical reasons, line numbers in Plussa’s compilation error messages are off more than the usual 2 lines. Sorry about that!
-}

addpos :: [Integer] -> Integer

addpos lst = sum (filter (>0) $ takeWhile (/=0) lst)