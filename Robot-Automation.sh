#!/bin/bash

## clean up robot-automation folder 
rm -rf robot-automation 

## download / clone repo
echo "Cloning Bitbucket robot-automation repo"
git clone https://arunboorla@bitbucket.org/mt/robot-automation.git

## Prerequisite - env_output.txt & env_output.bat files should be made available with encrypted password
## set encrypted password to env variable
echo "Setting password to env variable"
. ./env_output.txt

## Run TransXT-Suryoday test cases
cd robot-automation/BBPS/AxisBBPS/Agent_Institution

echo "Run BBPS-AxisBBPS-Agent_Institution"
robot --name "suyoday bank_Institution Test Automation Report" main.robot


date=$(date +"%d %B %Y")
reportTitle="${date}: BBPS-AxisBBPS-Agent_Institution Test Automation"
outputReport="output.xml"
combinedReport="combined_output.xml"



echo "Generate combined report an report send to dashboard.
agent-url = /var/www/html/htdocs/robot-automation/BBPS/AxisBBPS/Agent_Institution/

make folder with current date with build number , u can create under agent -url
after creation folder,  report.html,log.html, combined_output.xml, and selenium-screenshot *  agent-url/new flder 

