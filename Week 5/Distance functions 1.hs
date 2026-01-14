{-
Distance functions 1¶
Homework category 1 (Hw_cat_1)

(This exercise is later referenced in the Clusters exercise.)

In this exercise we are calculating with floating point numbers. However, the length of a list comes out as an Int, so you will probably have to use the fromIntegral function to get it converted to a floating point type.

Write a function distance1 :: String -> String -> Float that, given two strings s1 and s2, calculates their distance using the following formula ( (count of how many of the characters in s1 do not appear in s2 + (count of how many of the characters in s2 do not appear in s1) ) / ( (length of s1) + (length of s2) ). If both lists are empty, then the distance is 0. For example, the distance between “aaabc” and “aabdd” with this function is (1 + 2) / (5 + 5).

Write a function distance2 :: String -> String -> Float that, given two strings s1 and s2, calculates their distance using the following formula ( (count of characters in s1 that are other than any of ‘0’..‘9’) + (count of characters in s2 that are other that any of ‘0’..‘9’) ) / ( (length of s1) + (length of s2) ). If both lists are empty, then the distance is 0. For example, the distance between “xy765” and “abc2311” with this function is (2 + 3) / (5 + 7).

(Please note that these functions are not standard well-behaving “distance functions” in strict mathematical sense.)

Hint: List comprehension is useful here.
-}

distance1 :: String -> String -> Float
distance2 :: String -> String -> Float

stringIncludesChar str ch = [(if x == ch then 1 else 0)| x <- str]
distance1_s1 [] s2 = 0
distance1_s1 s1@(c1:rest1) s2
  | sum (stringIncludesChar s2 c1) == 0 =
   1 + distance1_s1 rest1 s2
  | otherwise = distance1_s1 rest1 s2

distance1_s2 s1 [] = 0
distance1_s2 s1 s2@(c2:rest2)
  | sum (stringIncludesChar s1 c2) == 0 =
   1 + distance1_s2 s1 rest2
  | otherwise = distance1_s2 s1 rest2

distance1 [] [] = 0
distance1 s1 s2 = (fromIntegral (distance1_s1 s1 s2 +
    distance1_s2 s1 s2))/
    (fromIntegral (length s1 + length s2))

characterIsBetween09 ch = ch >= '0' && ch <= '9'
countNon09String s = sum [(if characterIsBetween09(c) then 0 else 1)
    | c <-s]

distance2 [] [] = 0
distance2 s1 s2 = (fromIntegral (countNon09String s1 +
    countNon09String s2))
    /(fromIntegral (length s1 + length s2))





