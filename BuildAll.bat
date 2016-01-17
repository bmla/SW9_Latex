@echo off
:: This file is explicitly made for Dat_p9 project with the goal of
:: compiling the litterature, the paper and this folder's main
:: tex files ordered, so the result becomes one pdf with the two
:: papers inside.



Echo Building Litterature
START "LitBuilder" /D "%~dp0review" /wait  "BuildLiterature.bat" -nonstop 

Echo Building Paper
START "PaperBuilder" /D "%~dp0paper" /wait "BuildPaper.bat" -nonstop

:: Echo Building Appendix
:: START "AppendixBuilder" /D "%~dp0appendix" /wait "BuildAppendix.bat" -nonstop


Echo Building Combined PDF
START "CombinedBuilder"  /D "%~dp0" /wait "BuildCombined.bat" -nonstop

ECHO Done