-- Contains all functions used to create the roster 

module UserList
    (
    generateUserList
    ) where

import Data.List 


addCommasToString :: [String] -> String
addCommasToString = intercalate ","

factorial :: (Integral a) => a -> a  
factorial 0 = 1  
factorial n = n * factorial (n - 1) 


generateUserList = do 
    putStrLn "What's the class roster I.D.? (example 001-19)"
    classId <- getLine
    putStrLn "How many Students?"
    studentNumber <- getLine
    let studentNumberInt = (read studentNumber :: Int )


    let classNum = take 3 classId
    let studentTemplate = classNum ++ "-stu" ++ studentNumber ++ ",Student1,Student " ++ studentNumber ++ ",Class " ++ classId ++ "," ++ studentNumber ++ "Student" ++ classId ++ "@cc.mil,Common Core,Class " ++ classId ++ ",1"

    let studentTemplateRep =  replicate 5 studentTemplate
        
    
    

    --let fact1 factorial 0 = 1
    --factorial n = n * factorial (n-1)

    putStrLn studentTemplate 
    