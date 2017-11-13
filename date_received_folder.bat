::batch script for ryan
@echo off


::get today's date
for /f "tokens=1-4 delims=/ " %%i in ("%date%") do (
	set dow=%%i
	set month=%%j
	set day=%%k
	set year=%%l
)

::create folder name "Received_MM_DD_YY"
set datestr=_%month%_%day%_%year%
set r=Received
md %r%%datestr%

::call initials_time.bat

set initials=%USERNAME%

for /f "tokens=1 delims=: " %%h in ('time /T') do set hour=%%h
for /f "tokens=2 delims=: " %%m in ('time /T') do set minutes=%%m
for /f "tokens=3 delims=: " %%a in ('time /T') do set ampm=%%a

set CTIME=%hour%-%minutes%_%ampm%

::echo %CTIME%>>file%CTIME%.txt

mkdir %initials%_1_%CTIME%

move /-y %initials%_1_%CTIME% %r%%datestr%

::xcopy /e/z "C:\Users\Ryan.Ernst\Desktop\random_projects\Received initials & time.bat"