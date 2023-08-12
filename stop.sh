#!/usr/bin/env bash

echo  -e "\033[34m-------------------------uwsgi stop---------------------------\033[0m"

ps -ef |grep pn_uwsgi.ini | grep -v grep

sleep 1

echo  -e "\033[34m-------------------------run stop------------------------------\033[0m"

ps -ef |grep pn_uwsgi.ini | grep -v grep | awk '{print $2}' | xargs kill -9

sleep 1