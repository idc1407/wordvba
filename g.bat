set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%

set cn=i%date%_%hour%%min%

git add .
git commit -m "%cn%"
git pull 
git push
