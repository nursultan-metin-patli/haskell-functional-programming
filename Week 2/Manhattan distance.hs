{-
Manhattan distance¶
Homework category 1 (Hw_cat_1)

This task is meant to be solved by list comprehension, which gives you a very short solution.

Manhattan distance between two points is the sum of x-distance and y-distance. Ie. Manhattan distance between (3,3) and (2,6) is 1 + 3 = 4 (distance between 3 and 2 + distance between 3 and 6)

Write a function points :: Integer -> [(Integer, Integer)] that given an Integer x, evaluates to a list of such points in 2-dimensional space (pairs of type (Int, Int)), that their Manhattan distance from origin (0, 0) is at most x. So for parameter value 2, the function should return [(-2,0),(-1,-1),(-1,0),(-1,1),(0,-2),(0,-1),(0,0),(0,1),(0,2),(1,-1),(1,0),(1,1),(2,0)].

The grader sorts the output of your function so the order in which the elements are does not matter.
-}

points::Integer -> [(Integer, Integer)]
points x = [(a, b) | a<-[-x, -x+1..x], b<-[-x, -x+1..x],
    abs a + abs b <= x]