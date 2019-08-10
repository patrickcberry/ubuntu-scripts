if "%~1" equ "" (
	set message="General update"
) ELSE (
	set message=%1
)

git add .
git commit -m %message%
git push https://patrickcberry:Asunmaa2!@github.com/patrickcberry/ubuntu-scripts
