-- Prática 01 de Haskell - Parte 2
-- Nome: Giordana Camilla Camargo

-- 1 - Crie uma função itemize :: [String] -> [String] que receba uma lista de nomes e aplique a função htmlItem em cada nome.

-- coloca <li> em cada string
htmlItem :: String -> String
htmlItem x = "<li>" ++ x ++ "<li>"
itemize :: [String] -> [String]
itemize x = map htmlItem x

-- 2 - Crie uma função onlyVowels :: String -> String que receba uma string e retorne outra contendo somente suas vogais. Por exemplo: onlyVowels "abracadabra" vai retornar "aaaaa".

--verifica se é vogal
isVowel2 :: Char -> Bool
isVowel2 x = if (elem x "aeiouAEIOU") then True else False
onlyVowels :: String -> String
onlyVowels x = filter isVowel2 x

-- 3 - Escreva uma função onlyElderly :: [Int] -> [Int] que, dada uma lista de idades, selecione somente as que forem maiores que 65 anos.

-- verifica se tem mais de 65 anos
isOlder :: Int -> Bool
isOlder x = if (x > 65) then True else False
onlyElderly :: [Int] -> [Int]
onlyElderly x = filter isOlder x


-- 4 - Crie uma função onlyLongWords :: [String] -> [String] que receba uma lista de strings e retorne somente as strings longas 

-- Verifica se uma palavra tem mais de 10 caracteres
isLongWord :: String -> Bool
isLongWord s = if (length s > 10) then True else False

onlyLongWords :: [String] -> [String]
onlyLongWords x = filter isLongWord x

-- 5 - Escreva uma função onlyEven que receba uma lista de números inteiros e retorne somente aqueles que forem pares. Agora é com você a definição da tipagem da função!

-- Verifica se eh par
isEvenBetter  :: Int -> Bool
isEvenBetter n = mod n 2 == 0

onlyEven :: [Int] -> [Int]
onlyEven x = filter isEvenBetter x

-- 6 - Escreva uma função onlyBetween60and80 que receba uma lista de números e retorne somente os que estiverem entre 60 e 80, inclusive. Você deverá criar uma função auxiliar between60and80 e usar && para expressar o operador "E" lógico em Haskell.

-- verifica se fica entre 60 e 80 inclusive
between60and80 :: Int -> Bool
between60and80 x = x>=60 && x<=80

onlyBetween60and80 :: [Int] -> [Int]
onlyBetween60and80 x = filter between60and80 x

-- 7 - Crie uma função countSpaces que receba uma string e retorne o número de espaços nela contidos. Dica 1: você vai precisar de uma função que identifica espaços. Dica 2: aplique funções consecutivamente, isto é, use o resultado de uma função como argumento para outra.

-- funcao que retorna se char eh espaco
isSpace :: Char -> Bool
isSpace x = if (elem x " ") then True else False

countSpaces :: String -> Int
countSpaces x = length (filter isSpace x)

-- 8 - Escreva uma função calcAreas que, dada uma lista de valores de raios de círculos, retorne uma lista com a área correspondente a cada raio.

-- calcula as areas 
circleArea :: Float -> Float
circleArea x = pi * (x^2)

calcAreas :: [Float] -> [Float]
calcAreas x = map circleArea x

-- 9 - Neste exercício, você vai criar uma função equivalente a elem, mas usando uma função de alta ordem. Crie a função charFound :: Char -> String -> Bool que verifique se o caracter (primeiro argumento) está contido na string (segundo argumento). Exemplos de uso da função:

isChar :: Char -> Char -> Bool
isChar char1 char2 = char1 == char2

charFound :: Char -> String -> Bool
charFound char string = length (filter (isChar char) string) > 0