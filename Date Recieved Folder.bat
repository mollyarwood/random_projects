::batch script for ryan
@echo off


::get today's date
for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
	set dow=%%i
	set month=%%j
	set day=%%k
	set year=%%l
)
set datestr=_%month%_%day%_%year%

::create folder name "Received_MM_DD_YY"
set r=Received
set folderName=%r%%datestr%

md %r%%datestr%

::search current dir for folder. create if doesn't exist
::for /D %%s in (.\*) do (
::	if not exist %folderName% mkdir %folderName%
::)

	echo %%s
)
xcopy /e/z "C:\Users\Ryan.Ernst\Desktop\random_projects\Received initials & time.bat"
