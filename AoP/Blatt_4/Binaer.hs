{--
    Aufgabenblatt 4 - Jean-Pierre Kasperschinski
--}

-- Aufgabe 3

--1
data Bit = One | Zero deriving Show

--2
type Bits = [Bit]

--3
integer2Bits :: Int -> Bits
integer2Bits a
    | a == 0 = []
    | a `mod` 2 == 1 = integer2Bits r ++ [One]
    | even a = integer2Bits r ++ [Zero]
    where r = (div a 2)
    
--4
bits2String :: Bits -> String
string2Bits :: String -> Bits
