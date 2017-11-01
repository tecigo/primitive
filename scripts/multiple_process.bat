SETLOCAL ENABLEEXTENSIONS
SET me=%~n0
SET parent=%~dp0

SET file_name=../examples/monalisa.jpg

declare -a shapes_count=("50" "100" "500", "1000", "3000")

FOR %%A IN (0,1,2,3,4,5,6,7,8) DO (
    FOR %%N IN ("50", "100", "500", "1000", "3000") DO (
        echo "Making %file_name% %%A %%N"
        main_go.exe -i %file_name% -o "%file_name%.%%A.%%N.jpg" -n %%N -nth 10 -r 256 -s 5120 -m %%A
    )
)
