-- Prática 01 de Haskell - Parte 1
-- Nome: Giordana Camargo

-- 1 - Crie uma função sumSquares :: Int -> Int -> Int que receba dois números x e y e calcule a soma dos seus quadrados.
sumSquares :: Int -> Int -> Int
sumSquares x y = x^2 + y^2


-- 2 - Defina a função circleArea :: Float -> Float que receba um raio r e calcule a área de um círculo com esse raio, dada por pi vezes o raio ao quadrado. Dica: Haskell tem a função pi pré-definida. 
circleArea :: Float -> Float
circleArea x = pi * (x^2)

-- 3 - Defina uma função age :: Int -> Int -> Int que receba o ano de nascimento de uma pessoa e o ano atual, produzindo como resultado a idade (aproximada) da pessoa.

age :: Int  -> Int -> Int
age x y = y - x 


-- 4 - Defina uma função isElderly :: Int -> Bool que receba uma idade e resulte verdadeiro caso a idade seja maior que 65 anos. 

isElderly :: Int -> Bool
isElderly x = if x > 65 then True else False

-- 5 - Defina uma função htmlItem :: String -> String que receba uma String e adicione tags <li> e </li> como prefixo e sufixo, respectivamente. Por exemplo, se a entrada for "abc", a saída será "<li>abc</li>". Use o operador ++ para concatenar strings (este operador serve para concatenar quaisquer lista do mesmo tipo).

htmlItem :: String -> String
htmlItem x = "<li>" ++ x ++ "<li>"

-- 6 - Crie uma função startsWithA :: String -> Bool que receba uma string e verifique se ela inicia com o caracter 'A'

-- startsWithA :: String -> Bool
-- startsWithA x = if (head x) == 'A' then True else False 
-- ARRUMAR

-- 7 - Defina uma função isVerb :: String -> Bool que receba uma string e verifique se ela termina com o caracter 'r'. Antes desse exercício, teste no interpretador a função pré-definida last, que retorna o último elemento de uma lista.

-- isVerb :: String -> Bool
-- isVerb x = if (last x) == "r" then True else False





































