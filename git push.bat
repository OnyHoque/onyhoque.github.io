@echo off
for /F "tokens=2" %%i in ('date /t') do set mydate=%%i
set mytime=%time%
@echo on
git add .
git commit -m "%mydate%:%mytime%"
git branch -M main
git remote add origin https://github.com/OnyHoque/onyhoque.github.io.git
git push -u origin main