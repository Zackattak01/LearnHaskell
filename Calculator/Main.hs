module Main where

import Data.Maybe

readFloat :: String -> Float  
readFloat = read

invalidOp :: Float -> Float -> Maybe Float  
invalidOp x y = Nothing 

add :: Float -> Float -> Maybe Float 
add x y = Just (x + y)

sub :: Float -> Float  -> Maybe Float 
sub x y = Just (x - y)

mul :: Float -> Float -> Maybe Float 
mul x y = Just (x * y)

div :: Float -> Float -> Maybe Float 
div x y = Just (x / y)

readOperation :: String -> (Float -> Float -> Maybe Float )
readOperation x = case x of
                    "+" -> add
                    "-" -> sub
                    "*" -> mul
                    "/" -> Main.div -- yes i know.  I want to program as many functions as i can so i dont use the standard one
                    _ -> invalidOp

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