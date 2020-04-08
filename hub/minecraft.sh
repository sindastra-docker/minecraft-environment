#!/bin/sh

cd mount
java -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap -Xmx${MCRAM} -Xms${MCRAM} -jar minecraft_server.jar "$@" nogui
