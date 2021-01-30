module Main where

import Data.Maybe

readFloat :: String -> Float  
readFloat = read

toInt :: Float -> Int 
toInt = round

toFloat :: Int -> Float 
toFloat = fromIntegral

mod :: Float  -> Float  -> Maybe Float  
mod x y = Just (toFloat (Prelude.mod (toInt x) (toInt y)))

readOperation :: String -> (Float -> Float -> Maybe Float  )
readOperation x = case x of
                    "+" -> \x y -> Just (x + y)
                    "-" -> \x y -> Just (x - y)
                    "*" -> \x y -> Just (x * y)
                    "/" -> \x y -> Just (x / y)
                    "%" -> Main.mod
                    _ -> \_ _ -> Nothing 

main :: IO ()
main = do
    putStrLn "Enter a number"
    
    inputStr <- getLine 
    putStrLn "Enter another number"
    inputStr2 <- getLine 
    putStrLn "Enter operation"
    inputOp <- getLine

    let num1 = readFloat inputStr
    let num2 = readFloat inputStr2
    let op = readOperation inputOp

    let result = op num1 num2

    if isNothing result 
        then putStrLn "Invalid Operation!"
    else
        do
        let resultNumber = fromJust result
        let printStr =show num1 ++ " " ++ inputOp ++ " " ++ show num2 ++ " = " ++ show resultNumber
        putStrLn printStr