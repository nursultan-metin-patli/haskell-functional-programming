points::Integer -> [(Integer, Integer)]
points x = [(a, b) | a<-[-x, -x+1..x], b<-[-x, -x+1..x],
    abs a + abs b <= x]