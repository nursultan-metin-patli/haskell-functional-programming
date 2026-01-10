{-
Playing cards
Homework category 1 (Hw_cat_1)

We represent playing cards with (Char, Integer) pairs. ‘s’ means spades, ‘h’ hearts, ‘c’ clubs’ and ‘d’ diamonds, with number values going from 2 to 14 (Ace being 14). Consider a game, where a player is dealt two cards and wins credits based on the following rules:

If the player has the Ace of Spades (‘s’, 14), then the player wins 14 credits.

Otherwise if the player has two consecutive numbers of the same suit, then the player wins 8 credits.

Otherwise if the player has a pair (same number values), then the player wins 6 credits.

Otherwise if the player has to consecutive numbers, then the player wins 4 credits.

Otherwise if the player has two cards of the same suit, then the player wins 2 credits.

Otherwise, the player wins 0 credits.

Write a function credits :: (Char, Integer) -> (Char, Integer) -> Integer that evaluates the given credits.

You can assume that the given cards are real.
-}

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