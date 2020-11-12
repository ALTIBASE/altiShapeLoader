#!/bin/sh

BASEDIR=$(dirname "$0")
args=("$*")

run()
{
    RUN_JAR="$BASEDIR/altiShapeLoader.jar"
    JAVA_CMD="$JAVA_HOME/bin/java -Xms512m -Xmx4096m -Duser.language=en"
 
    $JAVA_CMD -jar $RUN_JAR ${args}
    
    exit 0
}

export JAVA_HOME=$JAVA_HOME

if [ ! -d "$JAVA_HOME" ]; then
    echo "[Symptom] Fail to start altiShapeLoader."
    echo "[Cause  ] JAVA_HOME environment variable has not been set correctly."
    echo "[Action ] Please set JAVA_HOME environment variable correctly."
else
    run
fi