{-
Maximum heart rate
Homework category 1 (Hw_cat_1)

This is a very simple task, aimed to give a feeling of Haskell.

NOTE: Please read the coding exercise submission instructions before submitting your work!

The maximum heart rate of a person is a figure that is used in many health and sports related analyses. Measuring the maximum heart rate is stressful, so often it is estimated with formulas that take into account that typically the max heart rate declines with age.

The simplest formula for max heart rate is 220 - age (age in years). However, this formula is found to give too low values for people with age > 40, and a formula 207 - 0.7 * age works better for them.

Write a function maxhr :: Float -> Float that given a Float age, calculates the estimated maximum heart rate for a person that age, using the formulas above. So for example, for a parameter 25 it should return 195.
-}

maxhr :: Float -> Float
maxhr h = if h <= 40 then 220-h else 207-0.7*h