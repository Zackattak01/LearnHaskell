module Main where

main :: IO ()
main = do
    let num = 26

    if num == 0
        then putStrLn "The number is 0!"
    else if num == 26
        then putStrLn "The number is 26!"
    else putStrLn "The number is neither 26 nor 0"

    if num `rem` 2 == 0
        then putStrLn "The number is even"
    else putStrLn "The number is odd"
