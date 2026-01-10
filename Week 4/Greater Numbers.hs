nextIsGreater :: [Integer] -> [Integer]
nextIsGreater (x:xs:xss)
    | (x < xs) = x:nextIsGreater (xs:xss)
    | otherwise = nextIsGreater (xs:xss)
nextIsGreater _ = []

