--Aufgabe 4 

--4.1
data Gerade = Gerade {anstieg :: Double, spy :: Double} 
-- hier Lege ich einen Konstrukor an für den Datentypen "Gerade"

--4.2
auswerten :: Gerade -> Double -> Double
auswerten (Gerade m1 n1) x = m1 * x + n1 
-- die Funktion "auswerten" benutzt den Dateitypen "Gerade" 
--4.3
data Punkt = Punkt {xkor :: Double, ykor :: Double} deriving Show
schnittpunkt :: Gerade -> Gerade -> Punkt
schnittpunkt (Gerade m1 n1) (Gerade m2 n2) =    
    Punkt ((n1 - n2) / (m2 - m1)) (auswerten (Gerade m1 n1) ((n1 - n2) / (m2 - m1)))

 --4.4
flaechezwischengeraden :: Gerade -> Gerade -> Double -> Double -> Double
flaechezwischengeraden (Gerade m1 n1) (Gerade m2 n2) x1 x2 = abs ((m1 * 0.5 * x2^2 + n1*x1) + (m1 * 0.5 *x2^2 + n1*x2)) - abs ((m2 * 0.5 * x2^2 + n2*x2) + (m2 * 0.5 * x1^2 + n2*x1))
