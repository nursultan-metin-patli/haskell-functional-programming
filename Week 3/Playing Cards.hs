credits :: (Char, Integer) -> (Char, Integer) -> Integer
credits (c1, num1) (c2, num2) |
    (((c1 == 's') || (c2 == 's')) &&
    ((num1 == 14) || (num2 == 14))) = 14

credits (c1, num1) (c2, num2) |
    ((num1 == num2 + 1) || (num1 == num2 - 1)) &&
    (c1 == c2)
    = 8

credits (c1, num1) (c2, num2) |
    num1 == num2
    = 6

credits (c1, num1) (c2, num2) |
    (num1 == num2 + 1) || (num1 == num2 - 1)
    = 4

credits (c1, num1) (c2, num2) |
    c1 == c2
    = 2

credits (c1, num1) (c2, num2) = 0