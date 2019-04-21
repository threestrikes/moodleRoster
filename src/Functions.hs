-- Contains all functions used to create the roster 
module Functions
    (rosterNumber
    ,rosterYear
    ,rosterId2
    ) where

import System.IO
import Data.Char

rosterNumber = "007" -- change to readLn later
rosterYear = "2019" -- change to readLn later

promptLine :: String -> IO String 
promptLine prompt = do
    putStr prompt 
    getLine

classNumber2 getNumber = do 
    getNumber  promptLine "What Number?"
-- userAccount 

-- -userName = 

-- -userEmail

-- -userPassword

-- -userCourse


-- Creates roster ID
rosterId2 = do  -- figure out how to add the correct type signature here
            classNumber <- promptLine "Class number? ";
            classYear <- promptLine "Class year? ";
            numberStudents <- promptLine "How many Students? ";

            let className = classNumber ++ "-" ++ classYear
            let userLogin = "stu-" ++ classNumber
            let userEmail = userLogin ++ "@commoncore.com"
            let userPassword = userLogin ++ "12345"
            let userCourse = "Common Core"
            let s = "; "
            let userAccount = (userLogin++s++className++s++userEmail++s++userPassword++s++userCourse)
            let fileName = className ++ ".txt"

            writeFile fileName userAccount;

            putStrLn ("Class " ++ className ++ " was created with " ++ numberStudents ++ " students!");

                 


