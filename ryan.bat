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

::search current dir for folder. create if doesn't exist
for /D %%s in (.\*) do (
	if not exist %folderName% mkdir %folderName%
)

::now folder is made. so go into it
cd /d %folderName%

::and search for the inner files in a similar manner. THIS NEEDS SOME WORK
for /D %%s in (.\*) do (
	echo %%s
)
