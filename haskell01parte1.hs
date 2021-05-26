-- Prática 01 de Haskell - Parte 1
-- Nome: Giordana Camargo


sumSquares :: Int -> Int -> Int
sumSquares x y = x^2 + y^2


circleArea :: Float -> Float
circleArea x = pi * (x^2)


age :: Int  -> Int -> Int
age x y = y - x 



isElderly :: Int -> Bool
isElderly x = if x > 65 then True else False


htmlItem :: String -> String
htmlItem x = "<li>" ++ x ++ "<li>"


startsWithA :: [Char] -> Bool
startsWithA x = if (head x) == 'A' then True else False 


isVerb :: String -> Bool
isVerb x = if (last x) == 'r' then True else False


isVowel :: Char -> Bool
isVowel x = if (x == 'a' || x == 'e' || x == 'i' || x == 'o' || x == 'u') then True else False

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = if (head x == head y) then True else False


isVowel2 :: Char -> Bool
isVowel2 x = if (elem x "aeiouAEIOU") then True else False