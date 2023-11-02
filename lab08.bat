## Lab 08 - Explanation

@echo off - The off command is turning of the Echo. This will make the file not be displayed, therefore it won't show up in the command prompt.
 
setlocal enabledelayedexpansion - This will enable delayed expansion. This will be used when you are working with loops and conditionals.
 
set /p sourcePath=Enter the source folder path: This makes you write an input path to the source folder. What you are putting in inside the sourcepath, the /p along with the word set, tells us to make a portion.



set /p destinationPath=Enter the destination folder path: This one is different from the previous one because it makes us choose where the destination path is. Where you would put the file.
 
if it does not exist "!sourcePath!\" (
    echo Error: Source folder does not exist.
    goto :eof
)
 
This checks if what the user puts in as a source actually exists.
 
if not exist "!destinationPath!\" (
    echo Error: Destination folder does not exist.
    goto :eof
)
 
This checks if the destination exists.
 
robocopy "!sourcePath!" "!destinationPath!" /E: This is used for the robo to copy all the files from the source file to the destination one, and /E tells it to go to the subdir and copy those ones too, not forgetting the empty file.
 
if errorlevel 8 (
    echo Error: ROBOCOPY encountered errors during the copy operation.
) else (
    echo Copy operation completed successfully.
)
 
This is basically checking to see if it made any mistakes. If it passes a certain number, it will tell you it made a mistake, and if it does, it will say completed successfully.



:end
Endlocal: this finishes the script and ends the local file that we started in the beginning.







