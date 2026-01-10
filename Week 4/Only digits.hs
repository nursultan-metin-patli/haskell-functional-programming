onlyDigits :: String -> Bool
isDigit' :: Char -> Bool

isDigit' c = c >= '0' && c <= '9'
onlyDigits [] = False
onlyDigits [x] = isDigit' x
onlyDigits (s:str) = (isDigit' s) &&
    (onlyDigits str)




