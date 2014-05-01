#!/bin/sh

# Starts the FitNesse server against a given environment
# Usage: ./start-fitnesse.sh <env> [online]
 
ENVIRONMENT=$1
PORT=8090
 
if [ -z "$ENVIRONMENT" ]; then
    if [ -z "$ENVIRONMENT" ]; then
        ENVIRONMENT=DEV
    fi
fi
 
FITNESSE_DIR=`dirname $0`
FITNESSE_JAR=bin/fitnesse-20140418-standalone.jar

git submodule update --init --recursive
mvn package

 
#cd $FITNESSE_DIR
 
echo "Starting Safia for environment $ENVIRONMENT"
 
EXEC="java -DEnv=$ENVIRONMENT -jar $FITNESSE_JAR -p $PORT -e 0 -o" 
# -a users.conf"
$EXEC &