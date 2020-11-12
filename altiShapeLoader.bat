@echo off
SETLOCAL ENABLEDELAYEDEXPANSION
set JAVA_HOME=%JAVA_HOME%

if not defined JAVA_HOME (
    echo MSGBOX "Symptom: Fail to start altiShapeLoader." ^& vbCrLf ^& "Cause: JAVA_HOME environment variable has not been set correctly." ^& vbCrLf ^& "Action: Set JAVA_HOME environment variable correctly.", 0, "Warning" > warning_msg.vbs
    cscript /NOLOGO warning_msg.vbs
    del warning_msg.vbs
    goto end
)

set JAVA_HOME_WITHOUT_WS=%JAVA_HOME: =%
if not %JAVA_HOME_WITHOUT_WS:"=%==%JAVA_HOME_WITHOUT_WS% (
    echo MSGBOX "Symptom: Failed to start altiShapeLoader due to unacceptable value of JAVA_HOME." ^& vbCrLf ^& "Cause: Double quotation has been detected in the value of JAVA_HOME and it may induce parsing error when locating JAVA_HOME path." ^& vbCrLf ^& "Action: Remove double quotation from the value of JAVA_HOME variable in the batch file and try again.", 0, "Warning" > warning_msg.vbs
    cscript /NOLOGO warning_msg.vbs
    del warning_msg.vbs
    goto end
)

for /R %SHP_LIBPATH% %%a in (altiShapeLoader.jar) do (
    set LOCALCLASSPATH="dir /b altiShapeLoader.jar /s"
)

set JAVA_CMD="%JAVA_HOME%\bin\java" -XX:MaxPermSize=512m -Xms1g -Xmx4g -Duser.language=en
%JAVA_CMD% -jar %~dp0\altiShapeLoader.jar %*
@echo on