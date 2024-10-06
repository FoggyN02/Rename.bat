@echo off
setlocal enabledelayedexpansion

REM Thư mục chứa các file cần đổi tên
set folderPath=P:\Test

REM Biến đếm bắt đầu từ 1
set count=1
set name=11

REM Duyệt qua tất cả các file trong thư mục A
for %%f in ("%folderPath%\*") do (
    REM Lấy phần mở rộng của file
    set "ext=%%~xf"
    
    REM Đổi tên file với số tăng dần, giữ nguyên định dạng
    ren "%%f" "!name!!ext!"
    
    REM Tăng biến đếm
    set /a count+=1
	set /a name+=1
)

pause
