{-
List of strings
Homework category 1 (Hw_cat_1)

This task is meant to be solved with list comprehension.

Write a function headOrLast :: [String] -> Char -> [String] that, given a list of strings and a character, evaluates to a list with all the strings of the input list that either begin or end with the input character. So headOrLast ["abc","cde","efg"] 'e' should give result ["cde","efg"].

Grader sorts the output of your function so the order in which the elements are does not matter.
-}

headOrLast :: [String] -> Char -> [String]
headOrLast str_vec c = filter (\x ->
    (x /= "") && (head x == c || last x == c))
    str_vec