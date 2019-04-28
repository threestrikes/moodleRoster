-- Contains all functions used to create the roster 

module UserList
    (
    generateUserList
    ) where

import Data.List 
import Control.Monad


classNum x = take 3 x

createStudent x y = forM_ [1..y] $ \y -> do
    appendFile (x ++ ".txt") $ classNum x ++ "-stu" ++ (show y) ++ ",Student1,Student " ++ (show y) ++ ",Class " ++ x ++ "," ++ (show y) ++ "Student" ++ x ++ "@cc.mil,Common Core,Class " ++ x ++ ",1" ++ "\n" 

generateUserList = do 
    putStrLn "What's the class roster I.D.? (example 001-19)"
    classId <- getLine
    putStrLn "How many Students?"
    studentNumber <- getLine
  
    let studentNumberInt = (read studentNumber :: Integer )
    let line1 = "username,password,firstname,lastname,email,course1,group1,type1" ++ "\n" 
    let studentList = createStudent classId studentNumberInt 
    let instructorList = classId ++ "-inst," ++ "Instructor1," ++ "Instructor 1" ++ ",Class " ++ classId ++ ",Instructor" ++ classId ++ "@cc.mil,Common Core,Class " ++ classId ++ ",2"

    putStrLn $ "Class " ++ classId ++ " was successfully created with " ++ (show studentNumberInt) ++ " Students and 1 Instructor account!"
     
    writeFile (classId ++ ".txt") line1
    createStudent classId studentNumberInt
    appendFile (classId ++ ".txt") instructorList