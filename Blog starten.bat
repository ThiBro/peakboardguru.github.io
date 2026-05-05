@echo off
title Blog - Jekyll Server
echo Starting Blog on http://127.0.0.1:4001/ ...
echo.
cd /d "C:\Source\peakboardguru.github.io"
start http://127.0.0.1:4001/
bundle exec jekyll serve --livereload --trace
pause
