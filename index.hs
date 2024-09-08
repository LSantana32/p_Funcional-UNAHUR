suma x y = x + y

doble x = x `suma` x

producto x y = (*) x y 

cuadrado x = x ^ 2

norma (x1,x2) = sqrt (cuadrado x1 + cuadrado x2)

constante8 x = 8

-- :t = type, :r = reload, :l = load 

-- TDC

sumaDeInt :: Int -> Int -> Int 
sumaDeInt x y = x + y

sumaTerna :: Integral a => (a,a,a) -> a
sumaTerna (x,y,z) = x + y + z

todoMenor:: (Floating a, Ord a) => (a,a,a) -> (a,a,a) -> Bool
todoMenor (x1,x2,x3) (y1,y2,y3) = x1 < y1 && x2 < y2 && x3 < y3


posicPrimerPar :: Integral a => (a,a,a) -> Int
posicPrimerPar (x,y,z) | even x = 0
                       | even y = 1
                       | even z = 2
                       | otherwise = 3

crearPar :: a -> b -> (a,b)
crearPar x y = (x,y)

invertir :: (a,b) -> (b,a) 
invertir (x,y) = (y,x)

crearTerna :: a -> b -> c -> (a,b,c)
crearTerna x y z = (x,y,z)

----------------------------------------------------------------------------------------------------------------------------------

--Practica 1
--(1)

suma1 :: Num a => a -> a -> a
suma1 x y = x + y

-- 1/2 :: Fractional a => a

division :: Integral a => a -> a -> a
division x y = div x y


esModIgualACero :: Integral a => a -> a -> Bool
esModIgualACero x y = (mod x y) == 0

armarTupla :: Num a => a -> (a,Bool)
armarTupla x = (x,True)

--(2)

sucesor :: Num a => a -> a
sucesor x = x + 1

segundo :: a -> b -> b
segundo _ y = y

suma' :: Num a => (a,a) -> a
suma' x = fst x + snd x

repetido :: a -> (a,a)
repetido x = (x,x)

--(3)
suma3 :: Float -> Float -> Float
suma3 x y = x + y

-- suma3 (sqrt 2) 3            V    
-- suma3 2.0 3.0               V
-- suma3 (mod 4 3) 1.5         X porque mod solo va con los integral, y los integral solo con los Int
-- suma 0 False                X

--(4)

f1 :: Int -> Int -> Int -> Int
f1 x y z = x + y + z

f2 :: Bool -> a -> a -> a
f2 x y z = if x then y else z                                 

f3 :: (a,b) -> c -> (c,b,a)
f3 (x,y) z = (z,y,x)
