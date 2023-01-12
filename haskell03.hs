--Exercicios realizados em aula:

--01:
add10toall :: [Int] -> [Int]
add10toall x = [ x+10 | x <- x ]

--02:
multN :: Int -> [Int] -> [Int]
multN x list = [ list * x | list <- list ]

--03:
multN' :: Int -> [Int] -> [Int]
multN' x list = map (*x) list

--04:
applyExpr :: [Int] -> [Int]
applyExpr x = [ 3*x+2 | x <- x ]

--05:
applyExpr' :: [Int] -> [Int]
applyExpr' x = map ( \y -> 3*y+2 ) x

--06:
addSuffix :: String -> [String] -> [String]
addSuffix string list = [ list++string | list <- list ]

--07:
selectgt5 :: [Int] -> [Int]
selectgt5 x = [x | x <- x, x > 5 ]

--08:
sumOdds :: [Int] -> Int
sumOdds x = sum (filter (\y -> odd y )x)

--09: 
sumOdds' :: [Int] -> Int
sumOdds' x = sum[ x | x <- x, odd x]

--10:
selectExpr :: [Int] -> [Int]
selectExpr x = [ x | x <- x, x >= 20, x <= 50 ]

--11:
countShorts :: [String] -> Int
countShorts x = length ([x | x <- x, length x < 5])

--12:
calc12 :: Float -> Float
calc12 x = (x^2) /2

calcExpr :: [Float] -> [Float]
calcExpr x = [ calc12 x | x <- x, calc12 x > 10]

--13:
trSpaces :: String -> String
trSpaces x = [if elem x " " then '-' else x | x <- x]

--14:
selectSnd :: [(Int,Int)] -> [Int]
selectSnd x = [ snd x| x <- x]

--Exercicios realizados em casa:

--15:
zipador :: [Int] -> [Int] -> [(Int,Int)]
zipador x y = zip x y

multiplicaPares :: [(Int,Int)] -> [Int]
multiplicaPares x = [ fst x * snd x | x <- x]

dotProd :: [Int] -> [Int] -> Int
dotProd x y = sum( multiplicaPares(zipador x y))
