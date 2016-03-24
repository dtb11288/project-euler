fibs = 1 : 2 : zipWith (+) (tail fibs) fibs

solve = sum $ filter (\x -> x `mod` 2 == 0) (takeWhile (\x -> x < 4000000) fibs)

main = do
   print $ solve
