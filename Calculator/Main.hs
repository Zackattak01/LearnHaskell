module Main where

readFloat :: String -> Float  
readFloat = read

main :: IO ()
main = do
    putStrLn "Enter a number"
    
    inputStr <- getLine 
    putStrLn "Enter another number"
    inputStr2 <- getLine 
    putStrLn "Enter operation"
    inputChar <- getLine

    let num1 = readFloat inputStr
    let num2 = readFloat inputStr2
    let op = inputChar

    let printStr = show num1 ++ " " ++ op ++ " " ++ show num2 ++ " = "
    putStr printStr

    if op == "+"
        then print(num1 + num2)
    else if op == "-"
        then print(num1 - num2)
    else if op == "*"
        then print(num1 * num2)
    else if op == "/"
        then do
            let result = num1 / num2  
            print(show result)
    else
        putStrLn  "Invalid Operation!"

