-- | A Lib module.
module Lib
    ( someFunc
    , square
    , ggT
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- | Calculate the square of a number
square 
    :: Num a => a -- ^ the number
    -> a -- ^ the square
square a = a*a

ggT :: Integer -> Integer -> Integer
ggT (a,b)
 | a == 0    = b
 | b == 0    = a
 | b >  a    = ggT(b,a)
 | otherwise = ggT(b,a `mod` b)