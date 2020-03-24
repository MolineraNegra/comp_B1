{-# LANGUAGE ScopedTypeVariables #-}
module LibSpec (spec) where

import Lib 
import Test.Hspec
import Test.QuickCheck


--main :: IO ()
--main = hspec $ do 
spec :: Spec
spec = do
    describe "square" $ do
        it "calculates the square of 5.3" $
            square 5.3 `shouldBe` 28.09
        it "calculates the square of an arbitrary integer" $
            property $ \(n :: Integer) -> square n == n * n
        it "calculates the square of an arbitrary double" $
            property $ \(n :: Double) -> square n == n * n
        --it "calculates the square of 5.3" $
        --    square 5.3 `shouldBe` 28.06

    describe "ggT" $ do
        it "calculates the ggT of 3528 and 3780" $
            ggT 3528 3780 `shouldBe` 252 --https://de.wikipedia.org/wiki/Gr%C3%B6%C3%9Fter_gemeinsamer_Teiler
        --it "calculates the ggT of an arbitrary integer" $
            --property $ \a b -> (check a b) ==> ggT a b == gcd a b 
        it "calculates the ggT of an arbitrary integer" $
            property $ \a b -> ggT a b == gcd a b 
