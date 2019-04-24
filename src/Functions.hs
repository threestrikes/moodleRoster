-- Contains all functions used to create the roster 
module Functions
    (
    rosterId2
    ) where

import System.IO

promptLine :: String -> IO String 
promptLine prompt = do
    putStr prompt 
    getLine



-- Creates roster ID
rosterId2 = do  -- figure out how to add the correct type signature here
            classNumber <- promptLine "Class number? ";
            classYear <- promptLine "Class year? ";
            
            putStrLn "How many Students?";
            numberStudents <- getLine
            let numberStudentsInt = (read numberStudents :: Int )
--            numberStudents <- promptLine "How many Students? ";
            let className = classNumber ++ "-" ++ classYear
            let fileName = className ++ ".txt"

            let accountStandard = "username,password,firstname,lastname,email,course1,group1,type1"  
            let studentStandard = "\n" ++ classNumber ++ "-stu" ++ "1" ++ ",Student" ++ "1" ++ ",Student " ++"1,"++ "Class " ++ className ++ "," ++ "1" ++ "Student" ++ className ++ "@cc.mil,Common Core,Class " ++ className ++ ",1" 
            let studentStandard2 = replicate numberStudentsInt (studentStandard)
            let studentStandard3 = concat studentStandard2 
            
            let instructorStandard = classNumber ++ "-inst," ++ "CommonCore19!!," ++ "Instructor " ++ classNumber ++ ",Class " ++ className ++ ",Instructor" ++ className ++ "@cc.mil,Common Core,Class " ++ className ++ ",2"
          
            let userLogin = "stu-" ++ classNumber
            let userEmail = userLogin ++ "@commoncore.com"
            let userCourse = "Common Core"
         
            let accountList = accountStandard ++ studentStandard3 ++ "\n" ++ instructorStandard
            
            writeFile fileName accountList;

            putStrLn ("Class " ++ className ++ " was successfully created with " ++ numberStudents ++ " Students and 1 Instructor account!");

factorial 0 = 1
factorial n = n * factorial (n-1)