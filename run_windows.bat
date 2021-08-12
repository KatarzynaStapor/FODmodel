setlocal enabledelayedexpansion
@ECHO OFF
FOR %%f in (.\data\*) DO (
ECHO Reading file %%f
SET basename=%%~nf
SET output_csv=.\results\!basename!_result.csv
SET rdvalue_txt=.\results\!basename!_RDvalue.txt
RDcompWindows.exe %%f !output_csv! !rdvalue_txt!
ECHO Results generated to !output_csv!
)
endlocal
