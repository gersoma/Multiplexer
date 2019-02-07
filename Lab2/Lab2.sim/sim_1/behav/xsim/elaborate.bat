@echo off
REM ****************************************************************************
REM Vivado (TM) v2017.3.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Wed Jun 27 16:01:40 -0500 2018
REM SW Build 2035080 on Fri Oct 20 14:20:01 MDT 2017
REM
REM Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
call xelab  -wto 6ac5c4390d9f4afea13ca142f1e4a9f2 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot mux8to1_tb_behav xil_defaultlib.mux8to1_tb -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0