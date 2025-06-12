#!/bin/bash
MOVIES=("RRR" "COURT" "PUSHPA" "STRANGER")
echo "First movie name : ${MOVIES[0]}"
echo "Second movie name :${MOVIES[2]}"
echo "fourth movie name : ${MOVIES[3]}"
echo "skipped movie name *** ${MOVIES[01]}"
echo "all movies :::: ${MOVIES[@]}"
echo "Total variables passed $#"
echo "Total varialbles passed to script : $@"
echo "Script name :: $0"
echo "Present working direcotry : $PWD"
echo "who is running the script : $USER"
echo " PID of the current script : $$"
echo "PID of the last command running in backgroup $!"