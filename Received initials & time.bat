::batch to create recieved time folder
@echo off

SET /I initials=[Please Enter Your Initials]

for /f "tokens=1 delims=: " %%h in ('time /T') do set hour=%%h
for /f "tokens=2 delims=: " %%m in ('time /T') do set minutes=%%m
for /f "tokens=3 delims=: " %%a in ('time /T') do set ampm=%%a

set CTIME=%hour%-%minutes%_%ampm%

::echo %CTIME%>>file%CTIME%.txt

md %initials%_1_%CTIME%