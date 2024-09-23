@ECHO OFF


SET "SPSS_FILE=240220.sav"

SET PROJECT_NUM=123456



REM 1. run raw conversion
SET "DATAFILE_STEP0=R%PROJECT_NUM%_STEP0_RAWCONVERTED"
dmsrun RawSPSSConvert.dms /d"INP_SPSS \"%SPSS_FILE%\"" /d"OUT_FILE \"%DATAFILE_STEP0%\"" /a:test.dms
if %ERRORLEVEL% NEQ 0 ( echo ERROR: Failure && pause && exit /b %errorlevel% )

