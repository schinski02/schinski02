{--
    Aufgabenblatt 4 - Jean-Pierre Kasperschinski
--}

-- Aufgabe 2

--1
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
istLeer ::  [a] -> Bool
istLeer [] = True
istLeer _ = False

--2 
snoc :: [a] -> a -> [a]
snoc [] a = [a]
snoc xs a = xs ++ [a]

--3
laenge :: [a] -> Int
laenge [] = 0
laenge (_:xs) = length xs + 1 

--4
erstesElement :: [a] -> a
erstesElement [] = error "ERROR 420 Leere Liste angegeben"
erstesElement (x:_) = x

--5
rest :: [a] -> [a]
rest (_:xs) 
    | laenge xs < 1 = error "ERROR 422 Zu wenig Elemente angegeben"
    | otherwise = xs

--6
letztesElement :: [a] -> a
letztesElement [] = error "ERROR 420 Leere Liste angegeben"
letztesElement [x] = x
letztesElement (_:xs) = letztesElement xs
    
--7
anfang :: [a] -> [a]
anfang [] = error "ERROR 420 Leere Liste angegeben"
anfang (x:xs)
    | laenge (x:xs) < 2 = []
    | otherwise = x : anfang xs

--8
nimm :: Int -> [a] -> [a]
nimm 0 (x:xs) = []
nimm a [] = []
nimm a (x:xs) = x : nimm (a-1) xs

--9
verwerfe :: Int -> [a] -> [a]
verwerfe 0 xs = xs
verwerfe a [] = []
verwerfe a (x:xs) = verwerfe (a-1) xs

--10
produkt :: Num a => [a] -> a
produkt [] = 1
produkt (x:xs) = x * produkt xs

--11
verdopple :: Num a => [a] -> [a]
verdopple = map (*2)

--12
verkette :: [a] -> [a] -> [a]
verkette (x:xs) (y:ys) = (x:xs) ++ (y:ys)

--13
rueckwaerts :: [a] -> [a]
rueckwaerts [] = []
rueckwaerts (x:xs) = rueckwaerts xs ++ [x]

--17

