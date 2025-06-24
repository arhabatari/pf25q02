@echo off
setlocal

set JAR_PATH=libs\json-simple-1.1.1.jar

rem Create output directory
if not exist out (
    mkdir out
)

echo 🔧 Compiling Java files...
javac -cp ".;%JAR_PATH%" -d out *.java
if errorlevel 1 (
    echo ❌ Compilation failed.
    exit /b 1
)

echo 📁 Copying resources...
xcopy /E /I /Y src\audio out\audio
xcopy /E /I /Y src\images out\images

echo 🚀 Launching the game...
cd out
java -cp ".;..\%JAR_PATH%" MainMenu
cd ..

endlocal
