module Main where

readInt :: String -> Int 
readInt = read

main :: IO ()
main = do
    putStrLn "Enter a number"
    input <- getLine 
    putStrLn "Enter another number"
    input2 <- getLine
    print(readInt input + readInt input2)

    

