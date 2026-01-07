headOrLast :: [String] -> Char -> [String]
headOrLast str_vec c = filter (\x ->
    (x /= "") && (head x == c || last x == c))
    str_vec