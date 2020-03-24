module Main where

import Lib

main :: IO ()
main = do
    putStr "Geben Sie bitte eine Zahl ein (0 == Ende): "
    number0 <- readLn  :: IO Integer
    putStr "Geben Sie bitte noch eine Zahl ein (0 == Ende): "
    number1 <- readLn  :: IO Integer

    if (number0 == 0 && number1 == 0)
        then putStrLn "Ciao"
        else if (number1 == 0)
            then do 
                putStrLn ("square(" ++ show number0 ++ ") = " ++ show (square number0))
                main
            else do
                putStrLn ("ggT(" ++ show number0 ++ " & " ++show number1 ++ ") = " ++ show (ggT number0 number1))
                main





