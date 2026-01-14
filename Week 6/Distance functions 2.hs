{-
Distance functions 2
Homework category 1 (Hw_cat_1)

Write a function distanceFilter :: (String -> String -> Float) -> Float -> String -> [String] -> [String] that, given a distance function f, a distance d, a string s and a list of strings ss, returns all the strings in ss that are at most distance d away from s, calculated using the given distance function f.

You can use the following function for testing purposes:

distance3 :: String -> String -> Float
distance3 x y = fromIntegral $ abs $ length x - length y
Hint: Use the filter or foldr/foldl functions.

Grader sorts the output of your function to make sure that the implementation is considered correct as long as the right elements are in the output.
-}

distanceFilter :: (String -> String -> Float) -> Float -> String -> [String] -> [String]

distance3 :: String -> String -> Float
distance3 x y = fromIntegral $ abs $ length x - length y
distanceFilter f d s ss = filter (\x -> (f s x)<=d) ss